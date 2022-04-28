import 'package:bmicalculator/modules/counter.dart';
import 'package:bmicalculator/modules/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButton extends StatelessWidget {
   final width ;
   final int count;

   CounterButton({
     this.width=210.0,
     required this.count,
});
  @override
  Widget build(BuildContext context) {

    return
      BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {

          },
          builder: (context, state) {
            return Container(
              width: width,
              height: 50.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 15,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.remove),
                      color: Colors.white,
                      onPressed: () {
                        CounterCubit.get(context).minus();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 15,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      );
  }
}

