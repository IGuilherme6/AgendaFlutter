import 'package:atividadep1/contatos.dart';
import 'package:atividadep1/tela.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {

  final TextEditingController controleNome = new TextEditingController();
  final TextEditingController controleTelefone = new TextEditingController();
  final TextEditingController controleEmail = new TextEditingController();

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
                  Contatos novoContato = Contatos(
                      nome: controleNome.text,
                      email: controleEmail.text,
                      telefone: controleTelefone.text);
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tela())
                  );
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
