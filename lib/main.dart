import 'package:flutter/material.dart';

void main(List<String> args) => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;
  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  final List<String> perguntas = [
    'Qual é sua cor favorita ?',
    'Qual é seu animal favorita?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: const Text('Resposta 1'),
              onPressed:
                  responder, //passando uma funcao para outra classe, isso é diferente de chamar a funcao responder()
            ),
            RaisedButton(
              child: const Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: const Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
