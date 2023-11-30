import 'package:flutter/material.dart';
import 'package:info_car_app/models/favoritos_carros.dart';
import 'package:provider/provider.dart';

import '../models/carro.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Carro carro = new Carro(
            modelo: 'Onix',
            marca: 'Chevrolet',
            valor: 90000,
            descricao: 'Onix Hatch 2024',
            imgUrl: "123123123");
        Provider.of<FavoritosCarros>(context, listen: false).add(carro);
      },
      child: Text('Inserir carro'),
    );
  }
}
