import 'package:dart2000/widgets/circle.dart';
import 'package:dart2000/widgets/crearEmail.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Stack(
                children: <Widget>[
                    Circle(
                      radius: 100,
                      colors: [
                        Colors.blueAccent,
                        Colors.white30,
                      ],
                    ),
                ],
              ), 
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 160,
                height: 160,
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                children: <Widget>[
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Vlum',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'PermanentMarker',
                            fontSize: 55,
                          ),
                        ),
                      )
                    ],
                  )),
                  //_crearInput(),
                  Divider(),
                  InputText(
                      label: 'usuario',
                      hint: 'ingrese usuario',
                      helper: 'Solo se aceptan letras'),
                  Divider(),
                ],
              ),
            ),
          ],
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
