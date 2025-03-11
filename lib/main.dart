import 'package:flutter/material.dart';
import 'homepage_YKDD.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.green,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 18,
          color: Colors.redAccent,
        )
      )
    ),

    home: Scaffold(
      appBar: AppBar(title: Text
      ('Flutter Demo'),
      //backgroundColor: Colors.blue,
      ),
      body: Center(
        child: LoginForm(),
      )),
  ));
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty){
     // ScaffoldMessenger.of(context).showSnackBar(
     //   SnackBar(content: Text('Login Successful')),
     Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context)=> Homepage_YKDD()),
      );
    } else {
       ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both username and password.')
        ),
      );
    }
  }

  @override
   Widget build(BuildContext context){
    return Column(
        children: [

              Image.asset('../assets/sipun.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover, 
              ),
              Text('Sign In', 
              style: TextStyle(fontSize: 24, 
              fontWeight: FontWeight.bold)),
              Text('Please enter your details'),

              TextField(
                   controller: _usernameController,
                   decoration: InputDecoration(labelText: 'Username',
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  ),
              
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _handleLogin,
                child: Text('Login'),
              ),
              ]
   ); 
   } 
}