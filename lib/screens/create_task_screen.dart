import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BannerImage(),
            const SizedBox(height: 16),
            const CommonTextField(
              title: 'Task Title',
              hintText: 'Task Title',
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: CommonTextField(
                    title: 'Date',
                    hintText: 'Dec,09',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CommonTextField(
                    title: 'Time',
                    hintText: '14:14',
                  ),
                ),
              ],
            ),
            const CommonTextField(
              title: 'Note',
              hintText: 'Task Note',
              maxLines: 8,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {}, child: const DisplayWhiteText(text: 'Save')),
          ],
        ),
      ),
    );
  }
}
