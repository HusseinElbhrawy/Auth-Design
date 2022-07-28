import 'package:auth_screens/core/utils/media_query_values.dart';
import 'package:auth_screens/screens/otp_screen.dart';
import 'package:auth_screens/widgets/custom_material_btn.dart';
import 'package:auth_screens/widgets/custom_tff.dart';
import 'package:auth_screens/widgets/main_image_widget.dart';
import 'package:auth_screens/widgets/sub_title_text_widget.dart';
import 'package:auth_screens/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          const MainImageWidget(path: 'assets/images/forget_password.svg'),
          const Divider(color: Colors.transparent),
          const TitleWidget(title: 'Forgot\nPassword?'),
          const Divider(color: Colors.transparent),
          const SubTitleTextWidget(
              text:
                  "Don't worry! It happens. Please enter the address associated with your account."),
          SizedBox(height: context.height / 25),
          const CustomTFF(
            icon: Icons.alternate_email_outlined,
            hint: 'Email ID / Mobile Number',
          ),
          SizedBox(height: context.height / 6),
          CustomMaterialButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OtpScreen(),
                ),
              );
            },
            title: 'Submit',
          ),
        ],
      ),
    );
  }
}
