import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/banner_image.dart';
import 'package:todo_app/widgets/common_container.dart';
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
            const SizedBox(height: 10),
            const BannerImage(),
            Container(
              height: deviceSize.height * 0.2,
              width: deviceSize.width,
              color: colors.primary,
              child: const Column(
                children: [
                  SizedBox(height: 20),
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
          ],
        ),
        Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CommonContainer(
                    height: deviceSize.height * 0.3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return const Text('Home');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text('Complete', style: context.textTheme.headlineMedium),
                  CommonContainer(
                    height: deviceSize.height * 0.25,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return const Text('Home');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DisplayWhiteText(text: 'Add a new task'),
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
