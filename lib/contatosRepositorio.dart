
import 'package:atividadep1/contato.dart';
import 'package:flutter/cupertino.dart';

class Contatosrepositorio {//repositorio de contatos
  final List<Contato> contatos = [];

  void addContato(Contato c){ //adiciona contato a List
    contatos.add(c);
  }

  List<Contato> getContato() {//retorna a lista de contatos
    return contatos;
  }

  void removerContato(Contato c){//remove um contato da lista
    contatos.remove(c);
  }
}