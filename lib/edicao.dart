
import 'package:flutter/material.dart';


class Editar extends StatelessWidget{
  final Map<String, String> contato;

  Editar({required this.contato});
  @override
  Widget build(BuildContext context) {
    final nomeController = TextEditingController(text: contato["nome"]);
    final telefoneController = TextEditingController(text: contato["telefone"]);
    final emailController = TextEditingController(text: contato["email"]);
    return Scaffold(
      appBar: AppBar(title: Text("Novo contato")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Nome"),
                  border: OutlineInputBorder()),
              controller: nomeController,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  TextField(
              decoration: InputDecoration(
                  label: Text("Telefone"),
                  border: OutlineInputBorder()),
              controller: telefoneController,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder()),
              controller: emailController,

            ),
          ),
        ],
      ),
    );
  }
}
