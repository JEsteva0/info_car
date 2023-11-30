import 'package:flutter/material.dart';
import 'package:info_car_app/models/carro.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:info_car_app/models/modelos_carros.dart';
import 'package:provider/provider.dart'; 

class MostrarCarros extends StatelessWidget {
 final List<Carro> carros = ModelosCarros.carros;
 
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
                  if (!favoritosProvider.carros.contains(carros[index])) {
                    favoritosProvider.adicionarAoFavoritos(carros[index]);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Carro adicionado aos favoritos!'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Este carro já está nos favoritos!'),
                      ),
                    );
                  }
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
