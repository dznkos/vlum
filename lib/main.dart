import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(       
      home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('To The Angle'),
        ),
      ),             
        body:  Column(           
            children: [
                Image(image: AssetImage('assets/logo.png'),  
                ),
                Expanded(
                    child:  ListView(

                    padding: EdgeInsets.symmetric(horizontal:  35.0, vertical:  15.0),
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text('Login',
                              style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'PermanentMarker',
                              fontSize: 55,
                              ),
                              ), 
                            )
                          ],
                        )
                      
                      ),   
                      _crearInput()
                    ],
                  ), 
                ),                             
            ], 
          ),
        ),  
    );
  }

  Widget _crearInput() {

    return Column(
        children: <Widget>[
      Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: <Widget>[
          Expanded( //TODO: Wrap with `Expanded` 
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child:  TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        counter: Text('Letras 0'),
                        hintText: 'Nombre de usuario',
                        labelText: 'Nombre',
                        helperText: 'Solo ingrese letras',
                        suffixIcon: Icon( Icons.account_circle)
                        ),
                    ),
            ),
          ),
          ],
        ),
        Row(
          children: <Widget>[          
          Expanded( //TODO: Wrap with `Expanded` 
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child:  TextField(
                      
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        counter: Text('Cantidad 0'),
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        helperText: 'No se aceptan simbolos',
                        suffixIcon: Icon( Icons.bubble_chart)
                        ),
                    ),
            ),
          ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(120.0,30.0,0,0),
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


