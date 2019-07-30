import 'package:flutter/material.dart';
import 'package:asbs/Components/SignInButton.dart';


class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Container(
          alignment: Alignment.centerRight,
          child: new Text(
            "SBAS",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Tajawal"),
            textDirection: TextDirection.rtl,
          ),
        ),

        flexibleSpace: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: <Color>[
                  const Color.fromRGBO(162, 146, 199, 0.7),
                  const Color.fromRGBO(51, 51, 63, 0.7),
                ],
                stops: [0.2, 1.0],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
              )),
        ),
      ),


      body: Container(
         color: Colors.white70,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.centerRight,
                        child: new Text(
                          "تعديل كلمة السر",
                          textAlign:TextAlign.right,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff19769f)),
                        ),
                      )
                    ],
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                            "نحن فقط بحاجة إلى معرفة البريد الإلكتروني الخاص بالتسجيل لإرسال رابط إعادة التعيين",
                        textAlign: TextAlign.right,),
                      )),

                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: new TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                              Icons.email,
                              textDirection: TextDirection.rtl,
                            ),
                            labelText: "البريد الالكترونى ", ),
                      ),
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                                  width:300.0,
                                  child: SignIn("اعداد كلمة سر جديدة"),
                          )

                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
