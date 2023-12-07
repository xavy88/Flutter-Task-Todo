import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/banner_image.dart';
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
            top: 270,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTasks(tasks: [
                      Task(
                          title: 'title',
                          note: 'note',
                          time: '16:20',
                          date: 'Dec-06',
                          isCompleted: false,
                          category: TaskCategories.education),
                      Task(
                          title: 'title 2',
                          note: 'note 2',
                          time: '17:08',
                          date: 'Dec-06',
                          isCompleted: false,
                          category: TaskCategories.work),
                    ]),
                    const SizedBox(height: 15),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '16:20',
                            date: 'Dec-06',
                            isCompleted: true,
                            category: TaskCategories.travel),
                        Task(
                            title: 'title 2',
                            note: 'note 2',
                            time: '17:08',
                            date: 'Dec-06',
                            isCompleted: true,
                            category: TaskCategories.shopping),
                      ],
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
              ),
            ))
      ],
    ));
  }
}
