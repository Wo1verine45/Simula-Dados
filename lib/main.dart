import 'dart:math';

import 'package:flutter/material.dart';
import 'dices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(237, 91, 71, 1.0)),
      home: const MyHomePage(title: 'Dicee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  int _index2 = 0;

  void _rodaDado() {
    setState(() {
      _index = Random().nextInt(6);
    });
  }

  void _rodaDado2() {
    setState(() {
      _index2 = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: const Color.fromRGBO(227, 91, 71, 1.0),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: _rodaDado,
                  child: Image.network(
                    Dices.Exemplos[_index].image,
                    width: 250,
                    height: 250,
                  )),
              GestureDetector(
                  onTap: _rodaDado2,
                  child: Image.network(
                    Dices.Exemplos[_index2].image,
                    width: 250,
                    height: 250,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
