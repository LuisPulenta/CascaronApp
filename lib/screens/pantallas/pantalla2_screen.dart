import 'package:cascaronapp/themes/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pantalla2Screen extends StatefulWidget {
  const Pantalla2Screen({Key? key}) : super(key: key);

  @override
  _Pantalla2ScreenState createState() => _Pantalla2ScreenState();
}

class _Pantalla2ScreenState extends State<Pantalla2Screen>
    with SingleTickerProviderStateMixin {
//--------------------------------------------------------
//--------------------- Variables ------------------------
//--------------------------------------------------------

  TabController? _tabController;

//--------------------------------------------------------
//--------------------- initState ------------------------
//--------------------------------------------------------

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

//--------------------------------------------------------
//--------------------- Pantalla -------------------------
//--------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondary,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppTheme.secondary,
                  AppTheme.primary.withAlpha(80),
                  AppTheme.secondary,
                ],
              ),
            ),
            child: TabBarView(
              controller: _tabController,
              physics: const AlwaysScrollableScrollPhysics(),
              dragStartBehavior: DragStartBehavior.start,
              children: <Widget>[
//-------------------------------------------------------------------------
//-------------------------- 1° TABBAR ------------------------------------
//-------------------------------------------------------------------------

                Column(
                  children: <Widget>[
                    AppBar(
                      title: (const Text("SCREEN 1")),
                      centerTitle: true,
                      backgroundColor: AppTheme.primary,
                    ),
                    const Expanded(
                      child: Center(child: Text("1° TABBAR")),
                    ),
                  ],
                ),

//-------------------------------------------------------------------------
//-------------------------- 2° TABBAR ------------------------------------
//-------------------------------------------------------------------------

                Column(
                  children: [
                    AppBar(
                      title: (const Text("SCREEN 2")),
                      centerTitle: true,
                      backgroundColor: AppTheme.primary,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Expanded(
                      child: Center(child: Text("2° TABBAR")),
                    ),
                  ],
                ),

//-------------------------------------------------------------------------
//-------------------------- 3° TABBAR ------------------------------------
//-------------------------------------------------------------------------

                Column(
                  children: [
                    AppBar(
                      title: (const Text("SCREEN 3")),
                      centerTitle: true,
                      backgroundColor: AppTheme.primary,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Expanded(
                      child: Center(child: Text("3° TABBAR")),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppTheme.primary,
        child: TabBar(
            controller: _tabController,
            indicatorColor: AppTheme.secondary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            labelColor: AppTheme.secondary,
            unselectedLabelColor: Colors.grey,
            labelPadding: const EdgeInsets.all(10),
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: const [
                    Icon(Icons.local_shipping),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Screen 1",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: const [
                    Icon(Icons.done_all),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Screen 2",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: const [
                    Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Screen 3",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
