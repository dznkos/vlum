import 'package:dart2000/widgets/circle.dart';
import 'package:dart2000/widgets/fondo.dart';
import 'package:dart2000/widgets/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.tealAccent,
              body: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft, 
                                  colors: [
                                      Colors.yellowAccent,
                                      Colors.blue,
                                    ]
                                  ),
                      ),
                      child: MyHomePage(),
                    ),         
              ),
           );  
  }

  Widget _crearInput() {
    String _nombre = '';
    return Column(
      children: <Widget>[
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: <Widget>[
            Expanded(
              //TODO: Wrap with `Expanded`
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      counter: Text('Letras ${_nombre.length}'),
                      hintText: 'Nombre de usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo ingrese letras',
                      suffixIcon: Icon(Icons.account_circle)),
                  onChanged: (valor) {
                    _nombre = valor;
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              //TODO: Wrap with `Expanded`
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      counter: Text('Cantidad 0'),
                      hintText: 'Contraseña',
                      labelText: 'Contraseña',
                      helperText: 'No se aceptan simbolos',
                      suffixIcon: Icon(Icons.bubble_chart)),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(120.0, 30.0, 0, 0),
              child: FlatButton(
                child: Text('Login'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}


 class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
  }
  
  class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {

      final size = MediaQuery.of(context).size;

      return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white10,
        body: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -size.width * 0.15,
                    top: -size.width * 0.25,
                    child: Circle(
                            radius: 120,
                            colors: [
                              Colors.red,
                              Colors.purpleAccent,
                            ],
                           ),
                  ),
                  Positioned(
                    right: size.width * 0.12,
                    bottom: -size.width * 0.75,
                    child: Circle(
                            radius: 220,
                            colors: [
                              Colors.teal,
                              Colors.red,
                            ],
                           ),
                  ),
                  Positioned(
                    right: -size.width * 0.55,
                    top: -size.width * 0.15,
                    child: Circle(
                            radius: 160,
                            colors: [
                              Colors.blue,
                              Colors.purpleAccent,
                            ],
                           ),
                  ), 
                ] 
              )
                
            ),
            LoginPage(),
          ],
        ));
    }
  }

