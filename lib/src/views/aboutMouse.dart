import 'package:flutter/material.dart';
import 'package:training/src/controllers/about_mouse.dart';
import 'package:training/src/models/about_mouse.dart';
import 'package:training/src/views/home_view.dart';

// Cores reutilizadas (ajuste conforme sua definição no projeto)
final Color corLetrasMenu = Colors.black;
final Color corMenuBar = Colors.orangeAccent;

class Aboutmouse extends StatelessWidget {
  final AboutController2 controller = AboutController2();
  Aboutmouse({super.key});

  @override
  Widget build(BuildContext context) {
    final about = controller.getAbout2();
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(about.photoUrl),
              radius: 50,
            ),
            const SizedBox(height: 20),

            Column(
              children: AboutMouseModel2(),
            ),
          ],
        ),
      )
    );
  }
}

