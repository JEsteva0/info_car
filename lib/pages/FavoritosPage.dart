import 'package:flutter/material.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:provider/provider.dart';
import 'MostrarCarros.dart';  // Importe a página MostrarCarros.dart

class PageFavoritos extends StatefulWidget {
  const PageFavoritos({super.key});

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
          Text(
            "Quantidade de carros favoritos: ${fav.carros.length}",
            style: TextStyle(fontSize: 48),
          ),
        ],
      ),
    );
  }
}
