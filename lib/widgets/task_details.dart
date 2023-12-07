import 'package:flutter/material.dart';

import '../data/models/task.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(children: [
        Text('Details'),
      ]),
    );
  }
}
