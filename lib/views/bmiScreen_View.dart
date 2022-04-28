import 'package:bmicalculator/shared/components/counterButton.dart';
import 'package:bmicalculator/shared/components/gender.dart';
import 'package:bmicalculator/shared/components/generalButton.dart';
// import 'package:bmicalculator/shared/components/generalButton.dart';
import 'package:flutter/material.dart';

class BMIview extends StatefulWidget {
  const BMIview({Key? key}) : super(key: key);

  @override
  State<BMIview> createState() => _BMIviewState();
}

class _BMIviewState extends State<BMIview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            icon : Icon(Icons.menu ,
            color: Colors.white,
          ),
          onPressed: () {}
          ),
        actions:
        [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications,
                color: Colors.white,
              ),),
        ],
        ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BMI Calculator',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'gender',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              Row(
               children: [
                 Expanded(
                   child: Gender(photo:
                   AssetImage('images/male.jpg'), gender: 'Male'),
                 ),
                 Expanded(
                   child: Gender(photo:
                   AssetImage('images/female1.jpg'), gender: 'Female'),
                 ),
               ],
             ),
              Text(
                'weight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  CounterButton(count: 50),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'height',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  CounterButton(count: 150),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Age',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CounterButton(width:310.0,count: 15),
              SizedBox(
                height: 30.0,
              ),
              generalButton(text: 'CALCULATE'),
            ],
          ),
        ),
      ),
    );
  }
}
