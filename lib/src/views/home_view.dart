import 'package:flutter/material.dart';
import 'package:training/src/models/about_mouse.dart';
import 'package:training/src/views/aboutMouse.dart';

final Color corLetrasMenu = Colors.black;
final Color corMenuBar = Colors.orangeAccent;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: Text("Zowie Mouse", style: TextStyle(color: corLetrasMenu)),
        centerTitle: true,
        backgroundColor: corMenuBar,
        iconTheme: IconThemeData(color: corLetrasMenu),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Aboutmouse2()),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("Corpo do app"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.app_registration_rounded),
              color: corLetrasMenu,
              onPressed: () {
                // Adicionar ação aqui
              },
            ),
            IconButton(
              icon: const Icon(Icons.phone),
              color: corLetrasMenu,
              onPressed: () {
                // Adicionar ação aqui
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              color: corLetrasMenu,
              onPressed: () {
                // Adicionar ação aqui
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(title: Text("Home")),
            Divider(),
            ListTile(title: Text("Produtos")),
            Divider(),
            ListTile(title: Text("Contato")),
            Divider(),
            ListTile(title: Text("Sobre")),
            Divider(),
          ],
        ),
      ),
    );
  }
}
