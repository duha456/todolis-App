import 'package:flutter/material.dart';
//import 'home.dart';
import 'screens/login_screen/login_screen.dart';
//import 'utils/constants.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoList App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
            ),
      ),
      home: const LoginScreen(),
      /*After the login screen it have to show the home screen.
      * after clicking on the log in button it should transfer to the other page */
    );

  }
}

