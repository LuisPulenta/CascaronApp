import 'package:flutter/material.dart';

class Pantalla4Screen extends StatelessWidget {
  const Pantalla4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green[200],
      body: const Center(
        child: Text('Pantalla 4'),
      ),
    );
  }
}
