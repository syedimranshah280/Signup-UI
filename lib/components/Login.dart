import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../SizeConfig.dart';
import '../widgets/loginPage/enterEmailWidget.dart';
import '../widgets/loginPage/enterPasswordWidget.dart';
import '../widgets/loginPage/loginButton.dart';
import '../widgets/loginPage/signupButtonNavigator.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/waterfall3.jpeg')),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: SizeConfig.heightmultiplier * 100 / 2,
                          width: SizeConfig.heightmultiplier * 100 / 2,
                          margin: EdgeInsets.all(
                            SizeConfig.heightmultiplier * 3 / 2,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                      SizeConfig.heightmultiplier * 30 / 2),
                                  topRight: Radius.circular(
                                      SizeConfig.heightmultiplier * 30 / 2)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 28,
                                    spreadRadius: 14,
                                    color: Colors.black26)
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white54.withOpacity(.1),
                                    Colors.white54.withOpacity(.1)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                            child: Container(
                              margin: EdgeInsets.all(
                                SizeConfig.heightmultiplier * 7 / 2,
                              ),
                              height: SizeConfig.heightmultiplier * 90 / 2,
                              width: SizeConfig.heightmultiplier * 90 / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          SizeConfig.heightmultiplier * 28 / 2),
                                      topRight: Radius.circular(
                                          SizeConfig.heightmultiplier *
                                              28 /
                                              2)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 24,
                                        spreadRadius: 12,
                                        color: Colors.black26)
                                  ],
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.white54.withOpacity(.1),
                                        Colors.white54.withOpacity(.1)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.bottomRight)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                                child: Center(
                                    child: Container(
                                  margin: EdgeInsets.all(
                                    SizeConfig.heightmultiplier * 7 / 2,
                                  ),
                                  height: SizeConfig.heightmultiplier * 73 / 2,
                                  width: SizeConfig.heightmultiplier * 73 / 2,
                                  padding: EdgeInsets.all(
                                      SizeConfig.heightmultiplier * 4 / 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                              SizeConfig.heightmultiplier *
                                                  25 /
                                                  2),
                                          topRight: Radius.circular(
                                              SizeConfig.heightmultiplier *
                                                  25 /
                                                  2)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 18,
                                            spreadRadius: 9,
                                            color: Colors.black26)
                                      ],
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.white54.withOpacity(.1),
                                            Colors.white54.withOpacity(.1)
                                          ],
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.bottomRight)),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 1.0, sigmaY: 1.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        EnterEmailWidget(), //enter email field
                                        EnterPasswordWidget(), //enter password field
                                        SizedBox(
                                          height: SizeConfig.heightmultiplier *
                                              1 /
                                              2,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                              padding:
                                                  EdgeInsets.only(right: 6),
                                              height:
                                                  SizeConfig.heightmultiplier *
                                                      7 /
                                                      2,
                                              alignment: Alignment.topRight,
                                              // width: 190,
                                              // color: Colors.red,
                                              child: Text(
                                                'Forgot password?',
                                                style: TextStyle(
                                                    color: Colors.white54,
                                                    fontSize: SizeConfig
                                                            .heightmultiplier *
                                                        3 /
                                                        2),
                                              )),
                                        ),
                                        LoginButton(), //login button
                                        SizedBox(
                                          height: SizeConfig.heightmultiplier *
                                              4 /
                                              2,
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightmultiplier * 4 / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 2,
                              width: SizeConfig.heightmultiplier * 20 / 2,
                              color: Colors.white54,
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.heightmultiplier * 3 / 2),
                              child: Text(
                                'Or Sign in with',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 2,
                                        color: Colors.black54,
                                      )
                                    ],
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.heightmultiplier * 4 / 2),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: SizeConfig.heightmultiplier * 20 / 2,
                              color: Colors.white54,
                            ),
                          ],
                        ),
                        Container(
                          height: SizeConfig.heightmultiplier * 20 / 2,
                          width: SizeConfig.heightmultiplier * 64 / 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: SizeConfig.heightmultiplier * 17 / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500)),
                                width: SizeConfig.heightmultiplier * 17 / 2,
                                child: SignInButton(Buttons.Facebook,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    mini: true,
                                    onPressed: () {}),
                              ),
                              Container(
                                height: SizeConfig.heightmultiplier * 17 / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500)),
                                width: SizeConfig.heightmultiplier * 17 / 2,
                                child: SignInButton(Buttons.Twitter,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(500)),
                                    mini: true,
                                    onPressed: () {}),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightmultiplier * 6 / 2,
                        ),
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 2,
                                  color: Colors.black54,
                                )
                              ],
                              color: Colors.white,
                              fontSize: SizeConfig.heightmultiplier * 3.7 / 2),
                        ),
                        SizedBox(
                          height: SizeConfig.heightmultiplier * 2.2 / 2,
                        ),
                        SignUpButtonNavigator(),
                        SizedBox(
                          height: SizeConfig.heightmultiplier * 3 / 2,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ));
  }
}
