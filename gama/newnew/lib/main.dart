import 'package:flutter/material.dart';
import 'package:practicacolores/login.dart';
import 'package:practicacolores/ventana.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'barberia';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/Home',
        routes: {
          '/Home': (_) => const MyStatefulWidget(),
          '/login': (_) => const homepage(),
        },
        theme: ThemeData(
          colorSchemeSeed:
              Color.fromARGB(255, 61, 70, 255), //CAMBIO DE COLOR DEL APPBAR
        ),
        title: _title,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Galería de imágenes'),
            backgroundColor: Colors.black,
          ),

          body: const MyStatefulWidget(), //CAMBIO DE COLORE DE FONDO
        ));
  }
}

//sft

class MyStatefulWidget extends StatefulWidget {
  //tipo body
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    //ESTILO BOTON ANTERIOR
    final ButtonStyle btnAnterior = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      primary: Color.fromARGB(255, 69, 124, 252), //color del btn
      onPrimary: Color.fromARGB(255, 255, 255, 255), //color del texto del btn
      padding:
          EdgeInsets.symmetric(horizontal: 30, vertical: 13), //Ancho y Alto
    );
    //ESTILO BOTON SIGUIENTE
    final ButtonStyle btnSiguiente = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 25),
        primary: Color.fromARGB(255, 69, 124, 252), //color del btn
        onPrimary: Colors.white, //color del texto del btn
        padding:
            EdgeInsets.symmetric(horizontal: 37, vertical: 13) //Ancho y Alto
        );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Primera Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    //Estilo y Textosuperior
                    'Barberia',

                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  )
                ],
              )
            ],
          ),

          const SizedBox(
              height: 10), //Separacion entre el texto superior y la imagen

          //Segunda Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  'images/q.jpg'), //Manda a llamara la imagen de la carpeta assets
            ],
          ),
          const SizedBox(
              height: 130), //Separacion entre la imagen y los botones ends

          //Tercera Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //BOTON Anterior

                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('INICIAR'), //Boton derecho
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
