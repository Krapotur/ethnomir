import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ethnomir/core/theme/theme.dart';
import 'package:flutter/material.dart';

class TextSloganWidget extends StatelessWidget {
  const TextSloganWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [Color.fromARGB(255, 233, 123, 39), Colors.white];
    final theme = Theme.of(context);

    return AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          'Еда - мост между мирами',
          colors: colorizeColors,
          textStyle: TextStyle(
            fontSize: ThemeTextScaler().responsiveFontSize(context, 18),
            color: theme.primaryColor,
          ),
        ),
      ],
      totalRepeatCount: 1,
    );
  }
}
