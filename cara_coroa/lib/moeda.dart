import 'package:flutter/material.dart';

class Moeda extends StatefulWidget {
  int valor;

  Moeda(this.valor);

  @override
  _MoedaState createState() => _MoedaState();
}

class _MoedaState extends State<Moeda> {
  @override
  Widget build(BuildContext context) {
    var imagemMoeda;

    if (widget.valor == 0) {
      imagemMoeda = "imagens/moeda_cara.png";
    } else {
      imagemMoeda = "imagens/moeda_coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(imagemMoeda),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("imagens/botao_voltar.png"),
              ),
            ],
          ),
        ));
  }
}
