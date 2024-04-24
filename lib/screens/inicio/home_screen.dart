import 'package:cascaronapp/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:cascaronapp/models/models.dart';
import 'package:cascaronapp/screens/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//---------------------------------------------------------------
//----------------------- Variables -----------------------------
//---------------------------------------------------------------

  String direccion = '';

//---------------------------------------------------------------
//----------------------- initState -----------------------------
//---------------------------------------------------------------

  @override
  void initState() {
    super.initState();
  }

//---------------------------------------------------------------
//----------------------- Pantalla ------------------------------
//---------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cascaron App'),
        centerTitle: true,
      ),
      body: _getBody(),
      drawer: _getMenu(),
    );
  }

//---------------------------------------------------------------
//----------------------- _getBody ------------------------------
//---------------------------------------------------------------
  Widget _getBody() {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 60),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.primary,
              AppTheme.secondary,
            ],
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/logo.png",
              height: 100,
              width: 500,
            ),
            const SizedBox(
              height: 120,
            ),
            const Text(
              'Bienvenido/a',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${widget.user.nombre!.replaceAll("  ", "")} ${widget.user.apellido!.replaceAll("  ", "")}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }

//---------------------------------------------------------------
//----------------------- _getMenu ------------------------------
//---------------------------------------------------------------
  Widget _getMenu() {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.secondary,
              AppTheme.primary,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppTheme.primary,
                    AppTheme.secondary,
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(
                    image: AssetImage('assets/logo.png'),
                    width: 160,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Usuario: ",
                        style: (TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        "${widget.user.nombre!.replaceAll("  ", "")} ${widget.user.apellido!.replaceAll("  ", "")}",
                        style: (const TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),

            //--------------------------------------------------------------
            //---------------------- Menú ----------------------------------
            //--------------------------------------------------------------

            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    tileColor: const Color(0xff8c8c94),
                    title: const Text('Pantalla Simple',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pantalla1Screen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //--------------------------------------------------------------
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(
                      Icons.grade,
                      color: Colors.white,
                    ),
                    tileColor: const Color(0xff8c8c94),
                    title: const Text('Pantalla Slide',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pantalla2Screen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //--------------------------------------------------------------
            Row(
              children: [
                Expanded(
                  child: ExpansionTile(
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    leading: const Icon(
                      Icons.dataset,
                      color: Colors.white,
                    ),
                    title: const Text("Menú desplegable",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(
                            Icons.handyman,
                            color: Colors.white,
                          ),
                          tileColor: const Color(0xff8c8c94),
                          title: const Text('Pantalla 3',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pantalla3Screen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListTile(
                          leading: const Icon(
                            Icons.engineering,
                            color: Colors.white,
                          ),
                          tileColor: const Color(0xff8c8c94),
                          title: const Text('Pantalla 4',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pantalla4Screen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //--------------------------------------------------------------
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            //--------------------------------------------------------------
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              tileColor: const Color(0xff8c8c94),
              title: const Text('Cerrar Sesión',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              onTap: () {
                _logOut();
              },
            ),
          ],
        ),
      ),
    );
  }

//---------------------------------------------------------------
//----------------------- _logOut -------------------------------
//---------------------------------------------------------------

  void _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isRemembered', false);
    await prefs.setString('userBody', '');
    await prefs.setString('date', '');

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
