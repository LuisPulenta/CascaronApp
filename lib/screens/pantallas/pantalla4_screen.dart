import 'package:cascaronapp/themes/app_theme.dart';
import 'package:cascaronapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Pantalla4Screen extends StatelessWidget {
  const Pantalla4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthPantalla = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green[200],
      body: Stack(
        children: [
          Slideshow(
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
          Positioned(
              top: 15,
              child: SizedBox(
                width: widthPantalla,
                child: Row(
                  children: [
                    const Spacer(),
                    PinterestMenu(
                      mostrar: true,
                      backgroundColor: AppTheme.primary,
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey,
                      items: [
                        PinterestButton(
                            icon: Icons.pie_chart,
                            onPressed: () {
                              //print('Icon pie_chart');
                            }),
                        PinterestButton(
                            icon: Icons.search,
                            onPressed: () {
                              //print('Icon search');
                            }),
                        PinterestButton(
                            icon: Icons.notifications,
                            onPressed: () {
                              //print('Icon notifications');
                            }),
                        PinterestButton(
                            icon: Icons.supervised_user_circle,
                            onPressed: () {
                              //print('Icon supervised_user_circle');
                            }),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
