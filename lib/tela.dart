import 'package:atividadep1/contato.dart';
import 'package:atividadep1/edicao.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'package:atividadep1/contatosRepositorio.dart';

class Tela extends StatefulWidget {
  final Contatosrepositorio contatos;
  Tela({required this.contatos});

  @override
  TelaEstado createState() => TelaEstado(contatos: contatos);
}

class TelaEstado extends State<Tela> {
  final Contatosrepositorio contatos;
  TelaEstado({required this.contatos});

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
                  MaterialPageRoute(
                    builder: (context) => Cadastro(
                      contatos: contatos,
                    ),
                  ));

              // Verificar se foi retornado algum contato e adicioná-lo à lista
              if (contato != null) {
                setState(() {
                  contatos.addContato(contato);
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
            itemCount: contatos.getContato().length,
            itemBuilder: (context, index) {
              Contato contato = contatos.getContato()[index];
              return ListTile(
                title: Text(contato.nome),
                subtitle: Text(
                    "Telefone: ${contato.telefone} \nEmail: ${contato.email}"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Editar(
                          contato:
                              contato, // Agora é um objeto Contato, não um Map<String, String>
                          contatos: contatos,
                        ),
                      ));
                },
              );
            },
          ),
        ),
      ]),
    );
  }
}
