import 'package:cascaronapp/widgets/widgets.dart';
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
      body: Center(
        child: Slideshow(
          bulletPrimario: 20,
          bulletSecundario: 10,
          //puntosArriba: true,
          colorPrimario: Colors.blue,
          colorSecundario: Color.fromARGB(255, 134, 132, 132),
          slides: <Widget>[
            Image.asset(
              "assets/logo.png",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/ic_launcher.png",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/splash.png",
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
