import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tela 1")),
      body: Center(
        child: ElevatedButton(
          child: const Text("ir para a tela 2"),
          onPressed: () {
            Navigator.pop(context, '/');
          },
        ),
      ),
    );
  }
}