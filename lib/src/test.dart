import 'package:flutter/material.dart';
import 'dart:math';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,required this.tittle});

  final String tittle;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  int randomNumber = 0;
  Random random = Random();

  _generarCarton() {
    List<List<int>> carton = [];
    for (int i = 0; i < 5; i++) {
      carton.add([
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
        randomNumber = random.nextInt(91),
      ]);
    }
    return carton;
  }

  void _generateRandomNumber1() { //metodo que genera un numero aleatorio entre el 0 y 49
    setState(() {
      randomNumber = random.nextInt(50);
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter--;
      //randomNumber = random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text(widget.tittle),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('prueba de numeros random'),
          Text('$randomNumber'),],
    ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomNumber1,
        child: const Icon(Icons.remove),
      ),
    );
    }
}