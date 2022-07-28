import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.isLoading = false,
  }) : super(key: key);
  final String title;
  final Function onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap(),
      color: Colors.blue,
      textColor: Colors.white,
      minWidth: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: isLoading,
            child: const CircularProgressIndicator(color: Colors.white),
          ),
          Visibility(
            visible: isLoading,
            child: const VerticalDivider(),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
