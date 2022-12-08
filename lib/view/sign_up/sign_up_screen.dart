
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:storio_app/controller/providers/sign_up_provoder.dart';
import 'package:storio_app/view/core/style_const.dart';
import 'package:storio_app/view/widgets/custum_textformfiled.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignUpProvider>(context);
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
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  height10,
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your First Name";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'First Name',
                                    keyboardType: TextInputType.name,
                                    prefixIcon: FontAwesomeIcons.user,
                                    controller: provider.firstName,
                                  ),
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your Last Name";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'Last Name',
                                    keyboardType: TextInputType.name,
                                    prefixIcon: FontAwesomeIcons.user,
                                    controller: provider.lastName,
                                  ),
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your User Name";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'User Name',
                                    keyboardType: TextInputType.name,
                                    prefixIcon: FontAwesomeIcons.user,
                                    controller: provider.userName,
                                  ),
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your E-mail";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'Email',
                                    keyboardType: TextInputType.emailAddress,
                                    prefixIcon: FontAwesomeIcons.at,
                                    controller: provider.email,
                                  ),
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your Password";
                                      }
                                      if (value.length < 8) {
                                        return "Password length must be atleast 8 characters";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'Password',
                                    keyboardType: TextInputType.visiblePassword,
                                    prefixIcon: FontAwesomeIcons.lock,
                                    obscureText: provider.obscureText,
                                    suffix: IconButton(
                                      onPressed: () {
                                        provider.passwordIsVisble();
                                      },
                                      icon: Icon(
                                        !provider.obscureText
                                            ? FontAwesomeIcons.eye
                                            : FontAwesomeIcons.eyeSlash,
                                        size: 20,
                                      ),
                                    ),
                                    controller: provider.password,
                                  ),
                                  TextFormFieldCustom(
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Your Conform Password";
                                      }
                                      if (value != provider.password.text) {
                                        return "Please Conform Your Password";
                                      }
                                      if (value.length < 8) {
                                        return "Password length must be atleast 8 characters";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    labelText: 'Conform Password',
                                    keyboardType: TextInputType.visiblePassword,
                                    prefixIcon: FontAwesomeIcons.lock,
                                    obscureText: provider.obscureTextConfrom,
                                    suffix: IconButton(
                                      onPressed: () {
                                        provider.conformPasswordIsVisble();
                                      },
                                      icon: Icon(
                                        !provider.obscureTextConfrom
                                            ? FontAwesomeIcons.eye
                                            : FontAwesomeIcons.eyeSlash,
                                        size: 20,
                                      ),
                                    ),
                                    controller: provider.conformPassword,
                                  ),
                                  SizedBox(
                                    width: 350,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      onPressed: () {
                                        provider.goToHome(context);
                                      },
                                      child: const Text(
                                        'Sign Up',
                                      ),
                                    ),
                                  ),
                                  height10,
                                  RichText(
                                    text: TextSpan(
                                      text: 'Don’t have an account?',
                                      style: const TextStyle(
                                        color: blacColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' Sign Up',
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              provider.goToSignIn(context);
                                            },
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
