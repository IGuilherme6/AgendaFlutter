

import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo contato")
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(decoration: InputDecoration(
              label: Text("Nome"), border: OutlineInputBorder()
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(decoration: InputDecoration(
              label: Text("(XX) XXXXX-XXXX"), border: OutlineInputBorder()
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              label: Text("Email"), border: OutlineInputBorder()
            ),),
          ),
          Row(
              children: [
              ],
          )
        ],
      ),
    );
  }
}