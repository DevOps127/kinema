import 'package:flutter/material.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class DefaultRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  const DefaultRaisedButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.buttonColor = AppColors.colorButton,
    this.textColor = AppColors.colorWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
