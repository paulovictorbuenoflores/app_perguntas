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

    // print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    //como estou trabalhando com inferencia, não precisa referenciar, pode ser só: final perguntas =[{}];
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': ['Red', 'Blue', 'Green', 'yelow'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': ['Gato', 'Cachorro', 'outro'],
      },
      {
        'texto': 'Qual é o seu esporte favorito?',
        'resposta': [
          'BMX',
          'Downhill',
          'FreeRide',
          'Enduro',
          'MotoCross',
          'Esporte Não radical'
        ],
      },
    ];

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['resposta'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pergunta'),
        ),
        body: Column(
          children: <Widget>[
            // Questao((perguntas[_perguntaSelecionada]['texto']) as String),
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
