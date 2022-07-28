import 'package:flutter/material.dart';

class CustomTFF extends StatelessWidget {
  const CustomTFF({
    Key? key,
    required this.hint,
    required this.icon,
    this.validator,
    this.controller,
    this.focusNode,
    this.keyboardType = TextInputType.name,
    this.suffixIcon,
  }) : super(key: key);
  final String hint;
  final IconData icon;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final Function(String? newChange)? validator;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          const VerticalDivider(color: Colors.transparent),
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              controller: controller,
              validator: (newvalue) => validator!(newvalue),
              keyboardType: keyboardType,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
