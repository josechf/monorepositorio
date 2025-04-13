import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'las pipsas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'flutter pipsas'),
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
  int resta = 100;
  String _mensaje = 'sin conexion';
  @override
  void initState() {
    super.initState();
    conectar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('valor: $resta'),
            ElevatedButton(
              onPressed: () {
                resta--;
              },
              child: Text('presioname'),
            ),
            Text('$_mensaje'),
          ],
        ),
      ),
    );
  }

  Future conectar() async {
    String url = 'https://dqb3lfri8i.execute-api.us-east-1.amazonaws.com/dev';
    final respuesta = await http.get(Uri.parse('$url/obtener'));
    Map<String, dynamic> mensajes = jsonDecode(respuesta.body);
    if (respuesta.statusCode == 200) {
      setState(() {
        _mensaje = mensajes['mensaje'];
      });
    } else {
      setState(() {
        _mensaje = 'FALLO LA CONEXIon';
      });
    }
  }
}
