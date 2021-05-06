import 'package:flutter/material.dart';
import 'package:flutter_web_login_ui/pageFirst/page1.dart';
import 'login/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'flutter web login ui',
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginPage(),
      '/testPage' : (context) => Page1()
    }
  ));
}
