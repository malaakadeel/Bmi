import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final AssetImage photo;
  final gender ;
  const Gender({Key? key,required this.photo,required this.gender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      shadowColor: Colors.green[300],
      child: Container(
        width: 100.0,
        height: 120.0,
        color: Colors.black,
        child: Column(
          children:[
            Image(
            image: photo,
            height: 100.0,
            width: 100.0,),
            Text(
              gender ,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
