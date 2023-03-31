import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    //ESTILO BOTON ANTERIOR
    final ButtonStyle btnAnterior = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 25),
      primary: Color.fromARGB(255, 69, 124, 252), //color del btn
      onPrimary: Colors.white, //color del texto del btn
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
                    'Inicio de seccion',

                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 1),
                  )
                ],
              )
            ],
          ),

          const SizedBox(
              height: 50), //Separacion entre el texto superior y la imagen

          //Segunda Columna
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/q.jpg'),
              //Manda a llamara la imagen de la carpeta assets
              const SizedBox(height: 100),

              const SizedBox(height: 200),
            ],
          ),

          /*Text(
  textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(fontWeight: FontWeight.bold),
),*/ //Separacion entre la imagen y los botones ends

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
                  ElevatedButton(
                    style: btnAnterior,
                    onPressed: () {
                      //se coloca el navigator 'Home'
                      Navigator.pushNamed(context, '/Home');
                    },
                    child: const Text('ANTERIOR'), //Boton izquierdo
                  ),

                  //BOTON Siguiente
                  ElevatedButton(
                    style: btnSiguiente,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Crear usurio'), //Boton derecho
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
