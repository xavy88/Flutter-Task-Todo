import 'package:flutter/material.dart';
import 'package:todo_app/widgets/banner_image.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 50),
            const BannerImage(),
            Container()
          ],
        )
      ],
    ));
  }
}
