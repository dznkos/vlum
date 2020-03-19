import 'package:flutter/material.dart';

class InputText extends StatefulWidget {

  final String label, hint, helper, icon;
  

  const InputText({Key key,@required this.label,@required this.hint,@required this.helper, @required this.icon}) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();

}

class _InputTextState extends State<InputText> {

  String _toto = '';
  
  @override
  Widget build(BuildContext context) {
    
    Icon iconField;
    bool pass = false;

    if (widget.icon == 'usu'){
       iconField = Icon (Icons.accessibility);
    }
    else	if (widget.icon == 'pas')
    {
       pass = true;
       iconField = Icon(Icons.security);
    }

    return  SingleChildScrollView(
      child: Container(

        child: TextField(
          obscureText: pass,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            counter: Text(' ${ _toto.length }'),
            hintText: widget.hint,
            labelText: widget.label,
            helperText: widget.helper,
            suffixIcon: iconField,             
            //Icon (Icons.check_circle_outline),
            //icon: Icon( Icons.account_circle )
          ),
          onChanged: (valor){
            setState( () {
              _toto = valor;
            });
          },
        ),     
      ),
    ); 


  }
}

