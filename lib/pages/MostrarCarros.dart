import 'package:flutter/material.dart';
import 'package:info_car_app/models/carro.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:provider/provider.dart'; // Importe o modelo Carro

class MostrarCarros extends StatelessWidget {
  final List<Carro> carros = [
    Carro(
      modelo: 'FIAT Cronos',
      marca: 'FIAT',
      valor: 93000.0,
      descricao: 'FIAT CRONOS 2024',
      imgUrl: 'images/cronos.png',
    ),
    Carro(
      modelo: 'FIAT Fastback',
      marca: 'FIAT',
      valor: 100000.0,
      descricao: 'FIAT Fastback 2024',
      imgUrl: 'images/fastback.png',
    ),
    Carro(
      modelo: 'VOLVO xc90',
      marca: 'VOLVO',
      valor: 150000.0,
      descricao: 'VOLVO Xc90 2024',
      imgUrl: 'images/xc-90.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostrar Carros'),
      ),
      body: ListView.builder(
        itemCount: carros.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(carros[index].modelo),
              subtitle: Text(carros[index].descricao),
              trailing: ElevatedButton(
                onPressed: () {
                  final favoritosProvider =
                      Provider.of<FavoritosCarros>(context, listen: false);
                  favoritosProvider.adicionarAoFavoritos(carros[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Carro adicionado aos favoritos!'),
                    ),
                  );
                },
                child: Text('Adicionar aos Favoritos'),
              ),
            ),
          );
        },
      ),
    );
  }
}