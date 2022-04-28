import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextFeild extends StatelessWidget {
final String text;
final String hint;
final labelText;
final icon;
final textInputType;
var textController = TextEditingController();
TextFeild( {required this.text ,required this.hint,required this.icon , required this.textController ,required this.textInputType, this.labelText} );

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text(
        text ,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(
      height: 10.0,
      ),
      Container(
        color: Colors.white,
        child: TextFormField(
        controller: textController,
        keyboardType: textInputType,
          obscureText: hint == 'Password' ? true : false  ,
        decoration: InputDecoration(
          hintText: labelText,
          fillColor: Colors.black,
          prefixIcon: Icon(
            icon,
          color: Colors.black,),
          border: InputBorder.none,
    ),
          style: TextStyle(
            color: Colors.black,
          ),
    ),
      ),
    ],
    );
  }
   
}
