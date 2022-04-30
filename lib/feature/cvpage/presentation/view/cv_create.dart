import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/constants/image_constants.dart';
import 'package:success_cv_maker/core/theme/app_colors.dart';

class CvCreatePage extends StatefulWidget {
  const CvCreatePage({Key? key}) : super(key: key);

  @override
  State<CvCreatePage> createState() => _CvCreatePageState();
}

class _CvCreatePageState extends State<CvCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
         const Padding(
            padding: EdgeInsets.only(right: 10),
            child:  Icon(Icons.dehaze),
          ),
        ],
        flexibleSpace: Center(
          child: Stack(
            children: [
              Align(
                  alignment: const Alignment(0.18, -0.1),
                  child: Image.asset("assets/images/Vector.png")),
              Align(
                  alignment: const Alignment(0, 0.5),
                  child: Image.asset("assets/images/suc.png")),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Peronel Informations",
                    style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Languages", style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
                const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Skills", style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
           const  SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Education", style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
           const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Experinces", style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
          const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child:
                    Text("Certifications", style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                  primary: AppColors.navyBlue,
                )),
          const  SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Add Another Sections",
                    style: Styles.getButtontextStyles()),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.navyBlue,
                  minimumSize: Size(MediaQuery.of(context).size.width - 60, 50),
                )),
           const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Create CV"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: AppColors.green,
                )),
          ],
        ),
      ),
    );
  }
}
