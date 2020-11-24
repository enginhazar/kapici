import 'package:flutter/material.dart';
import 'package:kapici/Screens/login/components/text_field_container.dart';
import 'package:kapici/constrait.dart';

class RoundedInputField extends StatelessWidget {
  final String hintString;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    this.hintString,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: hintString,
        ),
      ),
    );
  }
}
