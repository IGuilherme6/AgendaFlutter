import 'package:atividadep1/contato.dart';
import 'package:atividadep1/edicao.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'package:atividadep1/contatosRepositorio.dart';

class Tela extends StatefulWidget {
  final Contatosrepositorio contatos;// Recebe uma instância do repositório de contatos
  Tela({required this.contatos});// Construtor que espera o repositório como parâmetro

  @override
  TelaEstado createState() => TelaEstado(contatos: contatos);// Cria o estado do widget Tela
}

class TelaEstado extends State<Tela> {
  final Contatosrepositorio contatos;// Guarda a referência ao repositório de contatos
  TelaEstado({required this.contatos});// Construtor do estado, recebendo o repositório

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Agenda')),// Título
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () async {
              final contato = await Navigator.push(// Quando o botão é pressionado, navega para a tela de cadastro
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cadastro(
                      contatos: contatos,// Passa o repositório de contatos para a tela de cadastro
                    ),
                  ));
              // Verificar se foi retornado algum contato e adicioná-lo à lista
              setState(() {});// Após o cadastro, atualiza a tela (mesmo que não adicione um contato)
            },
            // Estilização do botão
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
        Expanded(// Lista que vai preencher o espaço disponível
          child: ListView.builder(
            itemCount: contatos.getContato().length,// Pega o número de contatos
            itemBuilder: (context, index) {
              // Monta cada item da lista
              Contato contato = contatos.getContato()[index];// Pega o contato da lista pelo índice
              return ListTile(
                title: Text(contato.nome),
                subtitle: Text(
                    "Telefone: ${contato.telefone} \nEmail: ${contato.email}"),
                onTap: () { // Quando o usuário clica no contato, vai para a tela de edição
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Editar(
                          contato:
                              contato, // Passa o contato que foi clicado
                          contatos: contatos,  // Passa o repositório para a tela de edição
                        ),

                      )

                  ).then((_){
                    // Quando volta da tela de edição, atualiza a lista
                    setState(() {
                    });
                  }
                  );
                },
              );
            },
          ),
        ),
      ]),
    );
  }
}
