import 'package:flutter/material.dart';
import 'package:flutter_web_login_ui/login/widgets/login_form.dart';

class MobileMode extends StatefulWidget {
  @override
  _MobileModeState createState() => _MobileModeState();
}

class _MobileModeState extends State<MobileMode> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height; 
    
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bg.jpeg",
          fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: LoginForm(
                    0.007,
                    0.04,
                    widthSize * 0.04,
                    0.06,
                    0.04,
                    0.07,
                    widthSize * 0.7,
                    0.05,
                    0.032,
                    0.04,
                    0.032
                  )
                )
              ]
            )
          ),
        ]
      )
    );
  }
}