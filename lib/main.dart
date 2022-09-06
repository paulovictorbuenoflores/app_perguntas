import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main(List<String> args) => runApp(PerguntaApp());

/**
 * 
 *           Como passa de stateles para stateful?
 1-criar uma classe state para gerenciar a classe statefull. PerguntaAppState
 2-extender o State e passar como generic a classe Statefullwidget que desejo gerenciar com meu State;
 3-passo o estado da aplicacao que vai ser gerenciado para a classe PerguntaAppState, no caso é tudo, vai ficar so a classe statefull
 4-criar um metodo:  PerguntaAppState createState() {} na classe stateful
 5-criar outro metodo setState() e passar aquilo que esta sendo modificado, no caso é o contador perguntaselecionada++;
 */
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita ?',
      'Qual é seu animal favorita?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
