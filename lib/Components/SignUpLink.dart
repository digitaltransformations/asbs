import 'package:flutter/material.dart';
import 'package:asbs/forgetpassword/forgetPass.dart';


class SignUp extends StatelessWidget {
  SignUp();
  @override
  Widget build(BuildContext context) {
    return (
        new FlatButton(

      padding: const EdgeInsets.only(
        top: 160.0,
      ),
      onPressed: () => Navigator.pushReplacementNamed(context, "/forget"),

      child: new Text(
        "هل نسيت الرقم السرى ؟  ",
        textAlign: TextAlign.right,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: new TextStyle(
            fontWeight: FontWeight.w300,
            letterSpacing: 0.5,
            color: Colors.white,
            fontSize: 12.0),
      ),
    ));
  }
}
