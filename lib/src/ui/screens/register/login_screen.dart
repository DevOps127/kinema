import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kinema/src/ui/shared/buttons/default_flatbutton.dart';
import 'package:kinema/src/ui/shared/buttons/default_raised_button.dart';
import 'package:kinema/src/ui/shared/textfield/default_textfield.dart';
import 'package:kinema/src/ui/shared/top_appbar.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopAppBar(),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Column(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.colorWhite,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppColors.colorSecondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DefaultTextField(
                              hintText: 'Enter E-mail',
                            ),
                            const SizedBox(height: 10),
                            DefaultTextField(
                              hintText: 'Password',
                              obscureText: true,
                            ),
                            const SizedBox(height: 40),
                            DefaultRaisedButton(
                              onPressed: () {},
                              text: 'Sign in',
                            ),
                            const SizedBox(height: 6),
                            DefaultFlatButton(
                              text: 'Recover Password',
                              textColor: Color(0xFF858996),
                              onPressed: () {},
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 24, top: 10),
                              child: const Text(
                                'OR',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.colorGrey,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: _CustomRaisedButton(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.facebookF,
                                          size: 16,
                                          color: Color(0xFF3b5998),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Facebook',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.colorBlack,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _CustomRaisedButton(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.google,
                                          size: 14,
                                          color: Color(0xFFdb3236),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'Google',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.colorBlack,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Function onTap;
  const _CustomRaisedButton({
    Key key,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.colorGrey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: child,
      ),
    );
  }
}
