import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

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
  int _notaTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Red', 'nota': 10},
        {'texto': 'Blue', 'nota': 7},
        {'texto': 'Green', 'nota': 5},
        {'texto': 'yelow', 'nota': -6},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Gato', 'nota': -10},
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'outro', 'nota': -10},
      ],
    },
    {
      'texto': 'Qual é o seu esporte favorito?',
      'resposta': [
        {'texto': 'BMX', 'nota': 10},
        {'texto': 'Downhill', 'nota': 10},
        {'texto': 'FreeRide', 'nota': 10},
        {'texto': 'Enduro', 'nota': 10},
        {'texto': 'MotoCross', 'nota': 10},
        {'texto': 'Esporte Não radical', 'nota': -10},
      ],
    },
  ];

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
    }
    print(_notaTotal);
    // print(_perguntaSelecionada);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //como estou trabalhando com inferencia, não precisa referenciar, pode ser só: final perguntas =[{}];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pergunta'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_notaTotal, _reiniciarQuestionario),
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
