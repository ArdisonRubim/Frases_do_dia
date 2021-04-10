import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:flutter/rendering.dart';

class Logica extends StatefulWidget {
  @override
  _LogicaState createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {

  var _mensagem_frase = "Clique no botão abaixo para gerar sua frase!";
  var _frases = [
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "É melhor conquistar a si mesmo do que vencer mil batalhas.",
    "Quem ousou conquistar e saiu pra lutar, chega mais longe!",
    "Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!"
  ];
  void _gerarFrase() {
    var _contador = Random().nextInt(_frases.length);
    setState(() {
      _mensagem_frase = _frases[_contador];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Frases do dia"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Deixar conteudos alinhados
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20, bottom:20),
           child: Text(
             "Frases do dia",
             textAlign: TextAlign.center,
             style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold   // Cor do conteudo
             ),
           ),
          ),

          Padding(padding: EdgeInsets.only(top: 20, bottom:20),
            child: Image.asset("images/imagem.jpg"),

          ),
          Padding(padding: EdgeInsets.only(top: 20, bottom:20),
            child: Text(
              this._mensagem_frase,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),
          ),
          FlatButton(
            color: Colors.white60,
            onPressed: _gerarFrase, // Chamando metodo _gerarFrases
          child: Text(
            "Gerar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.lime,

            ),

          ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lime,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            "Criado por: @Ardison_Rubim",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      
    );
  }
}
