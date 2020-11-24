import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kapici/Screens/Login/components/background.dart';
import 'package:kapici/Screens/Login/components/rounded_input_field.dart';
import 'package:kapici/Screens/Login/components/rounded_password_field.dart';
import 'package:kapici/Screens/SignUp/signup_screen.dart';
import 'package:kapici/Screens/Welcome/components/rounded_button.dart';
import 'package:kapici/constrait.dart';

import 'already_have_an_account_check.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GİRİŞ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.30,
            ),
            RoundedInputField(
              hintString: "E-Posta Adresi",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Giriş",
              press: () {},
            ),
            SizedBox(height: size.height * 0.04),
            AlreadyHaveAnAccountCheck(press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            }),
          ]),
    );
  }
}
