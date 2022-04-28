import 'package:flutter/material.dart';

class generalButton extends StatelessWidget {
  final String text;

  generalButton({
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: MaterialButton(
        onPressed:(){},
        child: Text(
          text ,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

