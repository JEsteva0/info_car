import 'package:flutter/material.dart';
import 'package:info_car_app/models/carro.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:provider/provider.dart';
import 'MostrarCarros.dart';

class PageFavoritos extends StatefulWidget {
  const PageFavoritos({Key? key}) : super(key: key);

  @override
  State<PageFavoritos> createState() => _PageFavoritosState();
}

class _PageFavoritosState extends State<PageFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritosCarros>(
      builder: (context, fav, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MostrarCarros()),
              );
            },
            child: Text("Mostrar Carros"),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: fav.carros.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(fav.carros[index].modelo),
                    subtitle: Text(fav.carros[index].marca),
                    leading: Image.network(
                      fav.carros[index].imgUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        _removerDosFavoritos(context, fav.carros[index]);
                      },
                      child: Text('Remover dos Favoritos'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _removerDosFavoritos(BuildContext context, Carro carro) {
    final favoritosProvider = Provider.of<FavoritosCarros>(context, listen: false);
    favoritosProvider.removerDosFavoritos(carro);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Carro removido dos favoritos!'),
      ),
    );
  }
}
