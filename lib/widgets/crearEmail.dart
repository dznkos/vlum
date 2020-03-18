import 'package:flutter/material.dart';

class InputText extends StatefulWidget {

  final String label, hint, helper;
  

  const InputText({Key key,@required this.label,@required this.hint,@required this.helper}) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();

}

class _InputTextState extends State<InputText> {

  String _toto = '';
  
  @override
  Widget build(BuildContext context) {
    
    return  SingleChildScrollView(
      child: Container(
        child: TextField(
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            counter: Text('Letras ${ _toto.length }'),
            hintText: widget.hint,
            labelText: widget.label,
            helperText: widget.helper,
            suffixIcon: Icon (Icons.check_circle_outline),
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

