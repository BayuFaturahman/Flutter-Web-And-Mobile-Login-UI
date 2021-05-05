import 'package:flutter/material.dart';
import 'package:flutter_web_login_ui/login/widgets/login_form.dart';

class DesktopMode extends StatefulWidget {
  @override
  _DesktopModeState createState() => _DesktopModeState();
}

class _DesktopModeState extends State<DesktopMode> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height; 

    return Container(
      // color: Colors
      decoration:BoxDecoration(image:DecorationImage(
        image: AssetImage("assets/images/bg.jpeg"),
        fit: BoxFit.cover,
      )),

      child: Row(
        children: [
          Container(
            height: heightSize * 1.0,
            width: widthSize * 0.50,
              child: Card(
              elevation: 5,
                color: Color(0xff2F284E).withOpacity(0.8),
                child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset('images/login-form.png', height: heightSize * 0.2, width: widthSize * 0.15),
                          SizedBox(height: 20),
                          Container(
                            height: heightSize * 0.6,
                            width: widthSize * 0.3,
                            child: LoginForm(
                              0, 0.009, 16, 0.04, 0.01, 0.04,
                              200, 0.009, 0.007, 0.01, 0.006
                            ),
                          )
                        ]
                      )
                    ),
            )
          ),
        ],
      )
    );
  }
}