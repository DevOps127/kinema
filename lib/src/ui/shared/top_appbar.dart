import 'package:flutter/material.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            customBorder: CircleBorder(),
            child: Container(
              height: 48,
              width: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.colorSecondary,
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.colorGrey,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            customBorder: CircleBorder(),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Text(
                'Help',
                style: TextStyle(fontSize: 16, color: AppColors.colorGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
