import 'dart:math';
import 'package:cara_coroa/moeda.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _exibirResultado() {
    int numero;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Moeda( Random(numero).nextInt(2))),
    );
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("imagens/logo.png"),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("imagens/botao_jogar.png"),
              )
            ],
          ),
        ));
  }
}
