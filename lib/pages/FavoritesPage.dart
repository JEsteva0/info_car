import 'package:flutter/material.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritosCarros>(
      builder: (context, fav, child) => Text(
        'Quantidade de carros favoritos: ${fav.carros.length}',
        style: TextStyle(fontSize: 48),        
        ),
    );
  }
}
