import 'package:flutter/material.dart';
import 'package:training/routes/Tela1.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Tela1()
      },
    );
  }
}