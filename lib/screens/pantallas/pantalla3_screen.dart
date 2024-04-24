import 'package:flutter/material.dart';

class Pantalla3Screen extends StatelessWidget {
  const Pantalla3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3'),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow[300],
      body: const Center(
        child: Text('Pantalla '),
      ),
    );
  }
}
