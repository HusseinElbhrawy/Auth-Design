import 'package:auth_screens/screens/login_screen.dart';
import 'package:auth_screens/widgets/custom_material_Btn.dart';
import 'package:auth_screens/widgets/custom_tff.dart';
import 'package:auth_screens/widgets/main_image_widget.dart';
import 'package:auth_screens/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_text_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // extendBodyBehindAppBar: true,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        physics: const BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const MainImageWidget(path: 'assets/images/sign_up.svg'),
          const Divider(color: Colors.transparent),
          const TitleWidget(title: 'Sign Up'),
          const Divider(color: Colors.transparent),
          const CustomTFF(
            icon: Icons.alternate_email_outlined,
            hint: 'Email',
          ),
          const CustomTFF(
            icon: Icons.face_outlined,
            hint: 'Full Name',
          ),
          const CustomTFF(
            icon: Icons.phone_outlined,
            hint: 'Mobile',
          ),
          const Divider(color: Colors.transparent),
          const Text.rich(
            TextSpan(
              text: "By Signing up, you're agree to our",
              children: [
                TextSpan(
                  text: " Terms & Conditions ",
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: " and ",
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.transparent),
          CustomMaterialButton(onTap: () {}, title: 'Continue'),
          const Divider(color: Colors.transparent),
          BottomTextWidget(
            buttonTitle: 'Login',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            title: 'Joined us before?',
          ),
        ],
      ),
    );
  }
}
