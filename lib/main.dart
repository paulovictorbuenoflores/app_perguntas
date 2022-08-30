import 'package:flutter/material.dart';

//1-a porta de entrada é o main, apartir do main conseguimos start a nossa aplicacao
void main(List<String> args) {
//2-aqui dentro chamaremos uma funcao run App e passaremos para ela nosso primeiro widget

//5-vamos passar uma instancia do meu PerguntaApp
  runApp(new PerguntaApp());
}

//3- para inserir nosso primeiro widget, temos que criar nosso primeiro widget
//Entao criaremos uma classe e herdaremos do StatelessWidget nosso primeiro widget
class PerguntaApp extends StatelessWidget {
//4-Preciso implementar um metodo build, este metodo retorna um Widget

  Widget build(BuildContext context) {
//aqui estou criando uma instacia desse jeito: return new MaterialApp
    return const MaterialApp(
      home: Text('Ola mundo!'), //retorno outro widget de texto
    );
  }
}
