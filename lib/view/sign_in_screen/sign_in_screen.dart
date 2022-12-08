import 'package:flutter/material.dart';
import 'package:storio_app/view/core/style_const.dart';
import 'package:storio_app/view/widgets/custum_textformfiled.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Image(
                                  width: size.width / 2,
                                  image: const AssetImage(
                                      'assets/images/logo 1.png'),
                                ),
                                height20,
                                const Text(
                                  "Welcome Back!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                  ),
                                ),
                                height10,
                                const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                height20,
                                const TextFormFieldCustom(
                                  labelText: 'User Name',
                                  keyboardType: TextInputType.name,
                                  prefixIcon: Icons.person,
                                ),
                                const TextFormFieldCustom(
                                  labelText: 'Password',
                                  keyboardType: TextInputType.visiblePassword,
                                  prefixIcon: Icons.password,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Forget Password?'),
                                ),
                                SizedBox(
                                  width: 350,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Sign In',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Don’t have an account?'),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('Sign Up'))
                                  ],
                                )
                              ],
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
