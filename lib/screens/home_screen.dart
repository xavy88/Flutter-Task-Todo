import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/banner_image.dart';
import 'package:todo_app/widgets/display_white_text.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            const BannerImage(),
            Container(
              height: deviceSize.height * 0.2,
              width: deviceSize.width,
              color: colors.primary,
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    DisplayWhiteText(
                      text: 'Nov 30, 2023',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'Todo List',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
