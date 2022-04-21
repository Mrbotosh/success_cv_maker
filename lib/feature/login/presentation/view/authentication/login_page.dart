import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/constants/font_constants.dart';
import 'package:success_cv_maker/core/theme/app_colors.dart';
import 'package:success_cv_maker/feature/login/presentation/view/authentication/sign_up_page.dart';
import 'package:success_cv_maker/feature/login/presentation/view/authentication/submit_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.green,
        child: Column(
          children: [
            Image.asset('assets/images/success.png'),
            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                'WELCOME!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'LemonTea',
                    fontSize: 30,
                    color: AppColors.navyBlue),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(0.2),
              child: Text(
                'Create your CV with Success',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SatoshiRegular',
                    fontSize: 10,
                    color: Colors.white),
              ),
            ),
            const TextFormFieldUsername(),
            const TextFormFieldPassword(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                  ),
                  Text(
                    ' Remember me',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontConstants.satoshiBold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              child: const Text(
                'Forgot password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontConstants.satoshiRegular,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubmitPage()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    primary: AppColors.navyBlue, // background
                    onPrimary: Colors.white, // foreground
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                  child: const Text('LOGIN'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontConstants.satoshiRegular,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontConstants.satoshiRegular,
                      fontSize: 12,
                      color: AppColors.navyBlue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormFieldPassword extends StatelessWidget {
  const TextFormFieldPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 55.0, right: 55),
        child: TextFormField(
          validator: (value) {
            return value!.isEmpty ? "This area is not empty" : null;
          },
          decoration: const InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              labelText: 'Password'),
        ),
      ),
    );
  }
}

class TextFormFieldUsername extends StatelessWidget {
  const TextFormFieldUsername({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 55.0, right: 55),
        child: TextFormField(
          validator: (value) {
            return value!.isEmpty ? "This area is not empty" : null;
          },
          decoration: const InputDecoration(
              fillColor: Colors.white,
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              labelText: 'Username'),
        ),
      ),
    );
  }
}
