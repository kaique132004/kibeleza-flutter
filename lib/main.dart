import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class PageHOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('HOME'),
          ),
        ),
      ),
    );
  }
}

class PageServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Serviços'),
          ),
          body: Center(
            child: Text('Pagina Serviços'),
          ),
        ),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Center(
                child: PageHOME(),
              ),
              Center(
                child: PageServices(),
              ),
              Center(
                child: Text('Conteudo da Tab 3'),
              )
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.blue,
            child: const TabBar(
              tabs: [
                Tab(
                  text: 'HOME',
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
                Tab(
                    icon: Icon(
                      Icons.cut,
                      size: 30,
                    ),
                    text: 'SERVIÇOS'),
                Tab(
                    icon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    text: 'PERFIL'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
