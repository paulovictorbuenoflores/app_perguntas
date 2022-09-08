import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoReniciarQuestioanario;
  Resultado(this.nota, this.quandoReniciarQuestioanario);
  String get fraseResultado {
    if (nota < 11) {
      return 'se lascou ;)';
    } else {
      return 'bom garoto';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: quandoReniciarQuestioanario,
          child: Text('Reiniciar?'),
          textColor: Colors.deepPurple,
        )
      ],
    );
  }
}
