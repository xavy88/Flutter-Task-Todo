import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
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
              const SelectCategory(),
              const SizedBox(height: 16),
              const SelectDateTime(),
              const CommonTextField(
                title: 'Note',
                hintText: 'Task Note',
                maxLines: 8,
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 80,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.save),
                  label: const DisplayWhiteText(text: 'Save'),
                  //child: const DisplayWhiteText(text: 'Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
