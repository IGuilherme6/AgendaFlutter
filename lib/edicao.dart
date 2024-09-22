
import 'package:atividadep1/contato.dart';
import 'package:atividadep1/contatosRepositorio.dart';
import 'package:flutter/material.dart';


class Editar extends StatelessWidget{
  final Contato contato;
  final Contatosrepositorio contatos;
  Editar({required this.contatos, required this.contato});

  @override
  Widget build(BuildContext context) {
    final nomeController = TextEditingController(text: contato.nome);
    final telefoneController = TextEditingController(text: contato.telefone);
    final emailController = TextEditingController(text: contato.email);
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
                  if(!(nomeController.text.isEmpty && telefoneController.text.isEmpty && emailController.text.isEmpty)) {
                    Contato c = new Contato(nome: nomeController.text,
                        email: emailController.text,
                        telefone: telefoneController.text);
                    contatos.removerContato(contato);
                    contatos.addContato(c);
                    Navigator.pop(context, c);
                  }else{
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("Campos incompletos"),
                            actions: [
                              TextButton(onPressed: () {
                                Navigator.of(context).pop();
                              }, child: Text("OK"))
                            ],
                          );
                        });
                  }
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
                contatos.removerContato(contato);
                Navigator.pop(context);

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
