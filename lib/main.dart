import 'package:flutter/material.dart';
import 'package:tasking_app/screens/signin_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark(),
    initialRoute: '/signin',
    routes: {
      '/signin' : (context) => SignIn(),
    },
  ));
}

