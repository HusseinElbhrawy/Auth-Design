import 'package:auth_screens/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        path,
        height:
            context.isPortrait ? context.height / 3.5 : context.height / 2.5,
      ),
    );
  }
}
