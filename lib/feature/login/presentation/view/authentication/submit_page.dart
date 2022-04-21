import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/theme/app_colors.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({Key? key}) : super(key: key);

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
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 55.0, right: 55),
                child: TextFormField(
                  validator: (value) {
                    return value!.isEmpty ? "This area is not empty" : null;
                  },
                  decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      labelText: 'E-Mail'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                  child: const Text('SUBMIT'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
