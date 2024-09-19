import 'package:atividadep1/edicao.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';

class Tela extends StatefulWidget {
  @override
  _TelaEstado createState() => _TelaEstado();
}

class _TelaEstado extends State<Tela> {
  List<Map<String, String>> contatos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Agenda')),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () async {
              final contato = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );

              // Verificar se foi retornado algum contato e adicioná-lo à lista
              if (contato != null) {
                setState(() {
                  contatos.add(contato);
                });
              }
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Borda arredondada
              ),
            ),
            child: Text("Novo contato"),
          )
        ]),
        Expanded(
          child: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              final contato = contatos[index];
              return ListTile(
                title: Text(contato["nome"]!),
                subtitle: Text(
                    "Telefone: ${contato["telefone"]} \nEmail: ${contato['email']}"
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Editar(contato: contato),));
                },
              );
            },
          ),
        ),
      ]),
    );
  }
}
