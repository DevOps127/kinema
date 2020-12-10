import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kinema/src/routes.dart';
import 'package:kinema/src/ui/shared/buttons/default_flatbutton.dart';
import 'package:kinema/src/ui/shared/buttons/default_raised_button.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen();

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: AppColors.colorPrimary,
                ),
              ),
              Expanded(
                child: ClipPath(
                  clipper: _myClipper(),
                  child: Container(
                    color: AppColors.colorSecondary,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight / 4,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/test.png',
                      height: 100,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kin',
                        style: const TextStyle(
                          fontSize: 38,
                          color: AppColors.colorWhite,
                        ),
                      ),
                      Text(
                        'ema',
                        style: const TextStyle(
                          fontSize: 38,
                          color: AppColors.colorButton,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Your home cinema',
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'SFUIText-Light',
                      fontWeight: FontWeight.w300,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.032,
            left: 24,
            right: 24,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DefaultRaisedButton(
                    text: 'Sign In',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  DefaultFlatButton(
                    onPressed: () => Navigator.of(context)
                        ?.pushNamed(RouteGenerator.loginScreen),
                    text: 'Login',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _myClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();
    path.addPolygon([
      Offset(size.width, 0),
      Offset(size.width, size.height),
      Offset(0, 0),
    ], true);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
