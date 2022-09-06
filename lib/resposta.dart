import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.green,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
