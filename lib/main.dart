import 'package:flutter/material.dart';
import 'package:tasking_app/screens/signin_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/signin',
    routes: {
      '/signin' : (context) => SignIn(),
    },
  ));
}

