import 'package:flutter/material.dart';
import 'package:kapici/constrait.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "Hesabınız Yok Mu? " : "Zaten Hesabınız Var Mı?",
            style: TextStyle(color: kPrimaryColor)),
        GestureDetector(
          onTap: press,
          child: Text(login ? "KAYDOL" : "OTURUM AÇ",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    );
  }
}
