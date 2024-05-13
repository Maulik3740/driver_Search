import 'package:flutter/material.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';

class ImageLinks extends StatelessWidget {
  const ImageLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 170 * s.customWidth,
            width: 100 * s.customWidth,
            child: Image.asset(ImagePath.googlePlay)),
      ],
    );
  }
}
