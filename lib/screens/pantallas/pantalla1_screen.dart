import 'package:flutter/material.dart';

class Pantalla1Screen extends StatelessWidget {
  const Pantalla1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[300],
      body: const Center(
        child: Text('Pantalla 1'),
      ),
    );
  }
}
