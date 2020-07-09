import 'package:flutter/material.dart';
import 'login/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'flutter web login ui',
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginPage()
    }
  ));
}
