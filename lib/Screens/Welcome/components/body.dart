import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kapici/Screens/SignUp/signup_screen.dart';
import 'package:kapici/Screens/Welcome/components/rounded_button.dart';
import 'package:kapici/Screens/login/login_screen.dart';
import 'package:kapici/constrait.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Talebiniz Nedir",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: RoundedButton(
            text: "Giriş",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ),
        RoundedButton(
          text: "Çıkış",
          color: kPrimaryLightColor,
          textColor: Colors.black,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ),
      ],
    ));
  }
}
