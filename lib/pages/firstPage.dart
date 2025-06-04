import 'package:flutter/material.dart';
import 'package:training/pages/SecondPage.dart';

final Color corLetrasMenu = Colors.black;
final Color corMenuBar = Colors.orangeAccent;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page", style: TextStyle(color: corLetrasMenu),),
        centerTitle: true,
        backgroundColor: corMenuBar,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: corLetrasMenu,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: Text("body of app"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.app_registration_rounded),
              color: corLetrasMenu,
              onPressed: () {
              },
            ),
              IconButton(
              icon: Icon(Icons.phone),
              color: corLetrasMenu,
              onPressed: () {
              },
            ),
              IconButton(
                icon: Icon(Icons.home),
                color: corLetrasMenu,
                onPressed: (){
                },
              ),
          ],
        ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text("menu 2"),
              ),
              ListTile(title: Text("Produtos")),
              Divider(),
              ListTile(title: Text("Produtos")),
              Divider(),
              ListTile(title: Text("Produtos")),
              Divider(),
              ListTile(title: Text("Produtos")),
              Divider(),
              ListTile(title: Text("Produtos")),
              Divider(),
            ],
          ),
        ),
    );
  }
}