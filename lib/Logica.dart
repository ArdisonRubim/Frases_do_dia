import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Logica extends StatefulWidget {
  @override
  _LogicaState createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Frases do dia"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Deixar conteudos alinhads

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
            child: Text(
              "Frases do dia",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 20, bottom:20),
            child: Text(
              "Frases do dia",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),

          ),// Espaçamento
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
