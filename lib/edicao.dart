
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(onPressed: () {
                  //adicionar edição de contato
                },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text("Editar")),
              ),
              ElevatedButton(onPressed: () {
                //adicionar remoção de contato
              },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text("Deletar"))
              ],
          )
        ],
      ),
    );
  }
}
