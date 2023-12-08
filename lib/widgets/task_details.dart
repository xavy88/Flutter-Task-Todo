import 'package:flutter/material.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:todo_app/widgets/widgets.dart';

import '../data/models/task.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(0.3),
            child: Icon(
              task.category.icon,
              color: task.category.color,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(task.time, style: style.titleMedium),
          const SizedBox(
            height: 16,
          ),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Task to be completed on ${task.date}'),
                Icon(Icons.check_box_outlined, color: task.category.color)
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(
            thickness: 1.5,
            color: task.category.color,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            task.note.isEmpty
                ? 'There is not additional note for this task'
                : task.note,
          ),
          const SizedBox(height: 16),
          Visibility(
            visible: task.isCompleted,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Task completeded '),
                Icon(Icons.check_box_outlined, color: Colors.green)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
