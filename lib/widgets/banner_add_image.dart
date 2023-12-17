import 'package:flutter/material.dart';

class BannerAddImage extends StatelessWidget {
  const BannerAddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration(
          //color: backgroundColors,
          image: DecorationImage(
            image: AssetImage('images/task-todo-banner.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
