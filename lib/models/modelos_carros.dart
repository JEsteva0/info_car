import 'package:info_car_app/models/carro.dart';

class ModelosCarros {
  static final List<Carro> carros = [
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
}
