import 'package:flutter/material.dart';

class MostrarCarros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostrar Carros'),
      ),
      body: Center(
        child: Text(
          'Conteúdo da Página MostrarCarros.dart',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
