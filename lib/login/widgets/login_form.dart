import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginForm extends StatefulWidget {
  final paddingTopForm, fontSizeTextField, fontSizeTextFormField, spaceBetweenFields, iconFormSize;
  final spaceBetweenFieldAndButton, widthButton, fontSizeButton, fontSizeForgotPassword, fontSizeSnackBar, errorFormMessage;

  LoginForm(
    this.paddingTopForm, this.fontSizeTextField, this.fontSizeTextFormField, this.spaceBetweenFields, this.iconFormSize, this.spaceBetweenFieldAndButton,
    this.widthButton, this.fontSizeButton, this.fontSizeForgotPassword, this.fontSizeSnackBar, this.errorFormMessage
  );

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;


    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(left: widthSize * 0.05, right: widthSize * 0.05, top: heightSize * widget.paddingTopForm),
        child: Column(
          children: <Widget>[
             TextFormField(
              controller: _usernameController,
                validator: (value) {
                  if(value.isEmpty) {
                    return 'Email Tidak Boleh Kosong';
                  }
                },
              keyboardType: TextInputType.emailAddress,
              autofocus: false,

              decoration: InputDecoration(
                labelText: "Email",
                contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),

            ),

            SizedBox(height: heightSize * widget.spaceBetweenFields),
            TextFormField(
                obscureText: _isHidePassword,
                autofocus: false,
                initialValue: '',
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  labelText: 'Password',
                suffixIcon: GestureDetector(
                onTap: () {
                _togglePasswordVisibility();
                },
                child: Icon(
                _isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHidePassword ? Colors.grey : Colors.blue,
                ),
                ),
                isDense: true,
                ),
                ),

            SizedBox(height: heightSize * widget.spaceBetweenFieldAndButton),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.fromLTRB(widget.widthButton, 15, widget.widthButton, 15),
              color: Colors.white,
              onPressed: () async {
                if(_formKey.currentState.validate()) {

                }
              },
              child: Text('Sigin', style: TextStyle(
                fontSize: widthSize * widget.fontSizeButton,
                fontFamily: 'Poppins',
                color: Color.fromRGBO(41, 187, 255, 1))
              )
            ),
            SizedBox(height: heightSize * 0.01),
            // Text('Esqueci minha senha', style: TextStyle(
            //   fontSize: widthSize * fontSizeForgotPassword,
            //   fontFamily: 'Poppins',
            //   color: Colors.white)
            // )
          ]
        )
      )
    );
  }
}
