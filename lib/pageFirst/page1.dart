import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // if(constraints.maxWidth <= 1024) {
        //   return MobileModePage1();
        // } else {
        //   return DesktopModePage1();
        // }
      },
    );
  }
}