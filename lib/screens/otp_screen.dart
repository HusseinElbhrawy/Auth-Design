import 'package:auth_screens/core/utils/media_query_values.dart';
import 'package:auth_screens/screens/reset_password_screen.dart';
import 'package:auth_screens/widgets/custom_material_btn.dart';
import 'package:auth_screens/widgets/main_image_widget.dart';
import 'package:auth_screens/widgets/sub_title_text_widget.dart';
import 'package:auth_screens/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          const MainImageWidget(path: 'assets/images/otp.svg'),
          const Divider(color: Colors.transparent),
          const TitleWidget(title: 'Enter OTP'),
          const Divider(color: Colors.transparent),
          const SubTitleTextWidget(
              text: "An 4 digit code has been sent to\n+91 9083990020"),
          SizedBox(height: context.height / 15),
          const Pinput(),
          SizedBox(height: context.height / 6),
          CustomMaterialButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResetPasswordScreen(),
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
