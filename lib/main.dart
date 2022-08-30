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
        //o body é um widget que suporta apenas 1 widget, para resolver este problema, vamos passar um widget que suporta uma lista de widget
        body: Column(
          children: const <Widget>[
            Text('Olar flutter'),
          ],
        ),
      ),
    );
  }
}
