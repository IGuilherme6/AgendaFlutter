import 'package:atividadep1/cadastro.dart';
import 'package:flutter/material.dart';

class Tela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Agenda')),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple, // Cor do texto
              padding: EdgeInsets.symmetric(
                  horizontal: 32, vertical: 16), // Padding interno
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Borda arredondada
              ),
            ),
            child: Text("Novo contato"),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text("Listar"))
        ]),
        Expanded(child: ListView(

        ))
      ]),
    );
  }
}
