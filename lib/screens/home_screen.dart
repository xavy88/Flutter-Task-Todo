import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/banner_image.dart';
import 'package:todo_app/widgets/common_container.dart';
import 'package:todo_app/widgets/display_list_of_tasks.dart';
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
                  const DisplayListOfTasks(tasks: []),
                  const SizedBox(height: 20),
                  Text('Completed', style: context.textTheme.headlineMedium),
                  const DisplayListOfTasks(
                    tasks: [],
                    isCompletedTasks: true,
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
