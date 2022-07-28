import 'package:flutter/material.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final String buttonTitle;
  final String title;

  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
          TextButton(onPressed: () => onTap(), child: Text(buttonTitle)),
        ],
      ),
    );
  }
}
