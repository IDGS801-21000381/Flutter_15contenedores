import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Aquí se quita el debug banner
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red, // Cambia el color de fondo a rojo
          title: Text(
            'Tarea de 15 contendores',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Hace el texto en negrita
              color: Colors.white, // Cambia el color del texto a blanco
            ),
            textAlign: TextAlign.center, // Centra el texto
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                  Colors.white,
                  Colors.black
                ],
                stops: [0.1, 0.2, 0.3, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorInkwell("Bienvenido"),
                      ContenedorDegradado(),
                      ContenedorConSizedBox(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorConIcono(),
                      ContenedorConImagen(),
                      AnimatedPressContainer(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorConBorde(),
                      ContenedorConSombra(),
                      ContenedorConRadialGradient(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorConBorderRadius(),
                      ContenedorAnidado(),
                      Contenedoress(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorConPadding(),
                      ContenedorConMargin(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContenedorCambiante(),
                      ContenedorInkwell("A preta el boton  :3"),

                      // Aquí puedes colocar el último contenedor si lo deseas
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContenedorInkwell extends StatelessWidget {
  final String texto;

  ContenedorInkwell(this.texto);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Gracias por : $texto'),
        ));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
        child: Center(
          child: Text(texto),
        ),
      ),
    );
  }
}

class ContenedorDegradado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
        ),
      ),
    );
  }
}

class ContenedorConSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        color: Colors.green,
      ),
    );
  }
}

class ContenedorConImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiGVkTehrIbopkkqIkF37GCA-Gb-SNdNxhovvUOT1vdA&s'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ContenedorConBorde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}

class ContenedorConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}

class ContenedorConRadialGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.yellow, Colors.red],
        ),
      ),
    );
  }
}

class ContenedorConBorderRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
    );
  }
}

class ContenedorAnidado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.purple,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.yellow,
      ),
    );
  }
}

class ContenedorConPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clic con padding");
      },
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Text(
          'Contenedor con Padding',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ContenedorConMargin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.grey,
      child: Text('Contenedor con Margin'),
    );
  }
}

class Contenedoress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/paw.png"),
        ),
        border: Border.all(
            color: Colors.blue, width: 5), // Ajusta el ancho del borde aquí
        color: Colors.blue,
      ),
      alignment: Alignment.bottomLeft,
      child: InkWell(
        onTap: () {
          print("Clic corto");
        },
      ),
    );
  }
}

class AnimatedPressContainer extends StatefulWidget {
  @override
  _AnimatedPressContainerState createState() => _AnimatedPressContainerState();
}

class _AnimatedPressContainerState extends State<AnimatedPressContainer> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.9;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        transform: Matrix4.diagonal3Values(_scale, _scale, 1.0),
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 12),
        ),
        child: Center(
          child: Text("Precioname !"),
        ),
      ),
    );
  }
}

class ContenedorConIcono extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ya borré esto')),
        );
      },
      child: Container(
        width: 75,
        height: 75,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 5),
          color: Colors.red,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(-5, 5),
              spreadRadius: 10,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Icon(Icons.delete, color: Colors.white, size: 30),
      ),
    );
  }
}

class ContenedorCambiante extends StatefulWidget {
  @override
  _ContenedorCambianteState createState() => _ContenedorCambianteState();
}

class _ContenedorCambianteState extends State<ContenedorCambiante> {
  bool _presionado = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _presionado = !_presionado;
        });
      },
      child: Container(
        width: 75,
        height: 75,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: _presionado ? Colors.green : Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.yellow, width: 5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(-5, 5),
              spreadRadius: 10,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Icon(Icons.delete, color: Colors.white, size: 30),
      ),
    );
  }
}
