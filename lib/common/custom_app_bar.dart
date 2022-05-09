import 'package:animal_planet/utils/strings.dart';
import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final double opacity;
  const CustomAppBar({Key? key, this.opacity = 0.8}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Container(
        padding: const EdgeInsets.only(
          top: 48,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: Strings.APP_NAME,
                    style: TextStyles.appNameTextStyle,
                  ),
                  const TextSpan(text: "\n"),
                  const TextSpan(
                    text: Strings.TAG_LINE,
                    style: TextStyles.tagLineTextStyle,
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}