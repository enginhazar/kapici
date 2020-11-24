import 'package:flutter/material.dart';
import 'package:kapici/Screens/Login/components/text_field_container.dart';
import 'package:kapici/constrait.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Şifre",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
