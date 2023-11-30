// FavoritosCarros.dart
import 'package:flutter/material.dart';
import 'package:info_car_app/models/carro.dart';

class FavoritosCarros extends ChangeNotifier {
  List<Carro> _carrosFavoritos = [];

  List<Carro> get carros => _carrosFavoritos;

  void adicionarAoFavoritos(Carro carro) {
    _carrosFavoritos.add(carro);
    notifyListeners(); 
  }
  void removerDosFavoritos(Carro carro) {
    _carrosFavoritos.remove(carro);
    notifyListeners();
  }
}
