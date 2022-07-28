import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_screens/screens/forget_password.dart';
import 'package:auth_screens/screens/sign_up_screen.dart';
import 'package:auth_screens/widgets/bottom_text_widget.dart';
import 'package:auth_screens/widgets/custom_material_btn.dart';
import 'package:auth_screens/widgets/custom_tff.dart';
import 'package:auth_screens/widgets/main_image_widget.dart';
import 'package:auth_screens/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // extendBodyBehindAppBar: true,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          const MainImageWidget(path: 'assets/images/sign_in.svg'),
          const Divider(color: Colors.transparent),
          const TitleWidget(title: 'Login'),
          const Divider(color: Colors.transparent),
          const CustomTFF(
            icon: Icons.alternate_email_outlined,
            hint: 'Email ID',
          ),
          CustomTFF(
            icon: Icons.lock_outline_sharp,
            hint: 'Password',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove_red_eye_outlined,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              child: const Text('Forgot Password?'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPassword(),
                  ),
                );
              },
            ),
          ),
          CustomMaterialButton(onTap: () {}, title: 'Login'),
          const Divider(color: Colors.transparent),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(end: 16),
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              const Text('Or'),
              Expanded(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(start: 16),
                  color: Colors.grey,
                  height: 1,
                ),
              ),
            ],
          ),
          const Divider(color: Colors.transparent),
          GoogleAuthButton(
            onPressed: () {},
            materialStyle: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            style: AuthButtonStyle(
              borderRadius: 8,
              padding: const EdgeInsets.all(12),
              iconType: AuthIconType.secondary,
              buttonColor: Colors.grey.shade300,
            ),
          ),
          const Divider(color: Colors.transparent),
          BottomTextWidget(
            buttonTitle: 'Resister',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
            title: 'New to Logistic ?',
          ),
        ],
      ),
    );
  }
}
