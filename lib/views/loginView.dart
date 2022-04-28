import 'package:bmicalculator/shared/components/generalButton.dart';
import 'package:bmicalculator/shared/components/loginFeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle_outlined,
          size: 30.0,
        ),
        title: Text(
          'Login page',
        ),
        backgroundColor: Colors.black,
      ),
      body : Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  children :
                  [
                    TextFeild(text: 'Email' ,
                        hint: 'Email' ,
                        icon: Icons.mail ,
                        textController: emailController,
                        textInputType: TextInputType.emailAddress
                        ,labelText: 'email address'),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFeild(text: 'Password' ,
                        hint: 'Password' ,
                        icon: Icons.lock ,
                        textController: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        labelText: 'password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(onPressed: (){},
                          child: Text(
                            'Register Now',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    generalButton(text: 'LOGIN'),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
