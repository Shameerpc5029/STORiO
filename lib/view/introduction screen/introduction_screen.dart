import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storio_app/view/core/style_const.dart';
import 'package:storio_app/view/sign_in_screen/sign_in_screen.dart';
import 'package:storio_app/view/sign_up_screen/sign_up_screen.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: screenGradiant,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 5,
                  child: const Center(
                    child: Image(
                      width: 200,
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                ),
                height20,
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      color: whiteColor,
                      child: Center(
                        child: PageView(
                          children: [
                            Column(
                              children: [
                           height20,
                                Image(
                                  height: size.height / 2.5,
                                  image: const AssetImage(
                                    'assets/images/home 3.png',
                                  ),
                                ),
                                Text(
                                  'Welcome',
                                  style: introductionHeadTextStyle,
                                ),
                                Text(
                                  '''With STORiO then you will find new friends
from various countries and 
regions throughout the 
region''',
                                  style: introductionContentTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                              ],
                            ),
                            Column(
                              children: [
                                Image(
                                  height: size.height / 2.5,
                                  image: const AssetImage(
                                    'assets/images/home 2.png',
                                  ),
                                ),
                                Text(
                                  'Welcome',
                                  style: introductionHeadTextStyle,
                                ),
                                Text(
                                  '''With STORiO then you will find new friends
from various countries and 
regions throughout the 
region''',
                                  style: introductionContentTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: size.height / 11,
                                ),
                                Center(
                                  child: Image(
                                    height: size.height / 3.5,
                                    image: const AssetImage(
                                      'assets/images/home 1.png',
                                    ),
                                  ),
                                ),
                                Text(
                                  'Welcome',
                                  style: introductionHeadTextStyle,
                                ),
                                Text(
                                  '''With STORiO then you will find new friends
from various countries and 
regions throughout the 
region''',
                                  style: introductionContentTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(CupertinoPageRoute(
                          builder: (context) {
                            return const SignUpScreen();
                          },
                        ));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: blacColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          CupertinoPageRoute(
                            builder: (context) {
                              return const SignInScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: blacColor,
                          fontWeight: FontWeight.bold,
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
    );
  }
}