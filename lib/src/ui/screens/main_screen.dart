import 'dart:ui';

import 'package:flutter/material.dart';
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
            top: screenHeight / 2,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/images/movie.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kin',
                        style: TextStyle(
                          fontSize: 38,
                          color: AppColors.colorWhite,
                        ),
                      ),
                      Text(
                        'ema',
                        style: TextStyle(
                          fontSize: 38,
                          color: AppColors.colorButton,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Your home cinema',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 24,
            right: 24,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: double.infinity,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.colorButton,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.colorButton,
                        ),
                      ),
                    ),
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
