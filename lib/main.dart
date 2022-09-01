import 'package:flutter/material.dart';

void main(List<String> args) => runApp(PerguntaApp());

/**
 * 
 *Como passa de stateles para stateful?
 1-criar uma classe state para gerenciar a classe statefull. PerguntaAppState
 2-extender o State e passar como generic a classe Statefullwidget que desejo gerenciar com meu State;
 3-passo o estado da aplicacao que vai ser gerenciado para a classe PerguntaAppState, no caso é tudo, vai ficar so a classe statefull
 4-criar um metodo:  PerguntaAppState createState() {} na classe stateful
 5-criar outro metodo setState() e passar aquilo que esta sendo modificado, no caso é o contador perguntaselecionada++;
 */
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
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

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
