import 'package:flutter/material.dart';

void main(List<String> args) => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //scanffold é a estrutura da aplicacao
      home: Scaffold(
        //vou comecando a criar minha arvore de componente baseada em composicao
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: const Text('Olar flutter'),
      ),
    );
  }
}
