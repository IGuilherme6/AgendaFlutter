import 'package:atividadep1/cadastro.dart';
import 'package:atividadep1/contatosRepositorio.dart';
import 'package:atividadep1/tela.dart';
import 'package:flutter/material.dart';
import 'package:atividadep1/contato.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contatosRepositorio = Contatosrepositorio();
    return MaterialApp(
      home: Tela(contatos: contatosRepositorio,),//chama somente tela
    );
  }
}

