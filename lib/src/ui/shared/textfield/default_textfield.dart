import 'package:flutter/material.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final String Function(String val) validator;
  final bool obscureText;
  final TextInputType textInputType;
  const DefaultTextField({
    Key key,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: AppColors.colorGrey,
        fontSize: 16,
      ),
      keyboardType: textInputType,
      obscureText: obscureText,
      cursorColor: AppColors.colorButton,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.colorGrey,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorGrey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorGrey),
        ),
      ),
      validator: validator,
    );
  }
}
