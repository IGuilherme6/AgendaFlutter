import 'package:atividadep1/contato.dart';
import 'package:atividadep1/tela.dart';
import 'package:atividadep1/validadores.dart';
import 'package:flutter/material.dart';
import 'package:atividadep1/contatosRepositorio.dart';

class Cadastro extends StatelessWidget {

  final TextEditingController controleNome = new TextEditingController();
  final TextEditingController controleTelefone = new TextEditingController();
  final TextEditingController controleEmail = new TextEditingController();
  final Contatosrepositorio contatos;

  Cadastro({required this.contatos});

  @override
  Widget build(BuildContext context) {
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
                  controller: controleNome,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  TextField(
              decoration: InputDecoration(
                  label: Text("Telefone"),
                  hintText: '(XX) 9XXXX-XXXX',
                  border: OutlineInputBorder()),
                  controller: controleTelefone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder()),
              controller: controleEmail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Validador v = new Validador();
                  if(((!controleNome.text.isEmpty) && v.VerificaTelefone(controleTelefone.text) && v.validarEmail(controleEmail.text))) {
                    Contato c = new Contato(nome: controleNome.text,
                        email: controleEmail.text,
                        telefone: controleTelefone.text);
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
                child: Text("Salvar")),
          )
        ],
      ),
    );
  }
}
