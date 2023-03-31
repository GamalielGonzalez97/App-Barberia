import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://mi-URL-de-imagen.com/mi-imagen.jpg',
      width: 200.0,
      height: 200.0,
      fit: BoxFit.cover,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cambiar Color de Texto',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cambiar Color de Texto'),
        ),
        body: Center(
          child: Text(
            '',
            style: TextStyle(
              color: Colors.blue, // Cambia el color del texto a azul
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
