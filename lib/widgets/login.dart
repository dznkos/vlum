import 'package:flutter/material.dart';
import 'package:dart2000/widgets/crearEmail.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [                       
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
                  InputText(
                      label: 'contraseña',
                      hint: 'contraseña',
                      helper: 'No se aceptan simbolos'),
                  Divider(),
                  Column(
                    children: [                    
                              roundedRectButton("Ingresar", signInGradients, false),
                              roundedRectButton("Crear cuenta", signUpGradients, false),
                              ],
                  ),                  
                ],
              ),
            ),
          ],
        ),
    );
  }
}

Widget roundedRectButton(
    String title, List<Color> gradient, bool isEndIconVisible) {
  return Builder(builder: (BuildContext mContext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(mContext).size.width / 1.9,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ),
          Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: ImageIcon(
                  AssetImage("assets/ic_forward.png"),
                  size: 10,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  });
}


const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];