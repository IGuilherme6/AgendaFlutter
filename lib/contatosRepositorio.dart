
import 'package:atividadep1/contato.dart';
import 'package:flutter/cupertino.dart';

class Contatosrepositorio {
  final List<Contato> contatos = [];

  void addContato(Contato c){
    contatos.add(c);
  }

  List<Contato> getContato() {
    return contatos;
  }

  void removerContato(Contato c){
    contatos.remove(c);
  }
}