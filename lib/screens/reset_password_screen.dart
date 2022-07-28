import 'package:auth_screens/widgets/custom_material_btn.dart';
import 'package:auth_screens/widgets/custom_tff.dart';
import 'package:auth_screens/widgets/main_image_widget.dart';
import 'package:auth_screens/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isLoading = true;
  void changeButtonLoadingState() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          const MainImageWidget(path: 'assets/images/reset_password.svg'),
          const Divider(color: Colors.transparent),
          const TitleWidget(title: 'Reset\nPassword'),
          const Divider(color: Colors.transparent),
          const CustomTFF(
            icon: Icons.lock_outline_sharp,
            hint: 'New Password',
          ),
          const CustomTFF(
            icon: Icons.lock_outline_sharp,
            hint: 'Confirm New Password',
          ),
          const Divider(color: Colors.transparent),
          CustomMaterialButton(
            onTap: () {
              changeButtonLoadingState();
            },
            isLoading: isLoading,
            title: 'Submitting',
          ),
        ],
      ),
    );
  }
}
