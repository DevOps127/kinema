import 'package:flutter/material.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class DefaultFlatButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color textColor;

  const DefaultFlatButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.textColor = AppColors.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: FlatButton(
        onPressed: onPressed,
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
