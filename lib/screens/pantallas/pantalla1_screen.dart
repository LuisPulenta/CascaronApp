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
      backgroundColor: Color.fromARGB(255, 232, 235, 140),
      body: const Center(
        child: Text('Pantalla 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
