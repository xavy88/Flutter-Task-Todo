import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/config/config.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/providers/task/task.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/banner_image.dart';
import 'package:todo_app/widgets/display_list_of_tasks.dart';
import 'package:todo_app/widgets/display_white_text.dart';

class HomeScreen extends ConsumerWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    final taskState = ref.watch(taskProvider);
    final completedTasks = _completedTask(taskState.tasks);
    final incompletedTasks = _incompletedTask(taskState.tasks);
    late final String currentDate = DateFormat('yMMMd').format(DateTime.now());
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
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    DisplayWhiteText(
                      text: currentDate,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    const DisplayWhiteText(
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
                    DisplayListOfTasks(
                      tasks: incompletedTasks,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    DisplayListOfTasks(
                      tasks: completedTasks,
                      isCompletedTasks: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 60,
                      child: ElevatedButton.icon(
                        onPressed: () => context.push(RouteLocation.createTask),
                        icon: const Icon(Icons.add),
                        label: const DisplayWhiteText(text: 'Add a new task'),
                        // child: const Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: DisplayWhiteText(text: 'Add a new task'),
                      ),
                    ),
                    //),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Task> _completedTask(List<Task> tasks) {
    final List<Task> filteredTasks = [];

    for (var task in tasks) {
      if (task.isCompleted) {
        filteredTasks.add(task);
      }
    }
    return filteredTasks;
  }

  List<Task> _incompletedTask(List<Task> tasks) {
    final List<Task> filteredTasks = [];

    for (var task in tasks) {
      if (!task.isCompleted) {
        filteredTasks.add(task);
      }
    }
    return filteredTasks;
  }
}
