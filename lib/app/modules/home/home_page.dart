import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Com layout ou não',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Text(
        'Conteudo',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
