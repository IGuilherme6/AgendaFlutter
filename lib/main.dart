import 'package:atividadep1/cadastro.dart';
import 'package:atividadep1/tela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela(),
    );
  }
}
