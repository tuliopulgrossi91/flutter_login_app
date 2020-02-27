import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

// Reformatar o Código	OPTION + CMD + L
// Comentar Linhas Selecionadas - OPTION + CMD + /

void main() => runApp(
      MaterialApp(
        home: Main(),
      ),
    );

TextEditingController usuario = new TextEditingController();
TextEditingController senha = new TextEditingController();

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Image(
          image: AssetImage('images/logo.png'),
          height: 32,
        ),
        // logo
        centerTitle: true,
        automaticallyImplyLeading: false, // desativando seta de retorno
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.indigo,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.cyan, Colors.indigo],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Login Flutter App',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Container(
              width: 300,
              child: Center(
                // inserindo campo de texto para senha
                child: TextField(
                  controller: usuario,
                  keyboardType: TextInputType.number, // definindo tipo de entrada de texto - numerico
                  style: TextStyle(
                      fontFamily: 'Abel-Regular',
                      fontSize: 25,
                      color: Colors.cyan),
                  // total de caracteres aceitos.
                  maxLength: 12,
                  maxLengthEnforced: true,
                  autofocus: true,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                      fillColor: Colors.indigo[50],
                      filled: true,
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: 'Usuário',
                      hintStyle: TextStyle(
                          fontFamily: 'Abel-Regular',
                          fontSize: 25,
                          color: Colors.cyan),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200),
                      )),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Center(
                // inserindo campo de texto para senha
                child: TextField(
                  controller: senha,
                  style: TextStyle(
                      fontFamily: 'Abel-Regular',
                      fontSize: 25,
                      color: Colors.cyan),
                  // total de caracteres aceitos.
                  maxLength: 8,
                  maxLengthEnforced: true,
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                      fillColor: Colors.indigo[50],
                      filled: true,
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Senha',
                      hintStyle: TextStyle(
                          fontFamily: 'Abel-Regular',
                          fontSize: 25,
                          color: Colors.cyan),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200),
                      )),
                ),
              ),
            ),
            Container(
              child: Center(
                // inserindo botao
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                  highlightColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(200),
                      side: BorderSide(color: Colors.indigo)),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 32,
                  ),
                  onPressed: () {
                    // se campos de texto vazio, sair do app
                    if (usuario.text == '' || senha.text == '') {
                      exit(0);
                      // senao, limpar campos de texto
                    } else {
                      usuario.text = '';
                      senha.text = '';
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
