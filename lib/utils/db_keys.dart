import 'package:flutter/material.dart';
import 'package:todo_app/utils/task_keys.dart';

@immutable
class DBKeys {
  const DBKeys._();

  static const String dbName = 'task.db';
  static const String dbTable = 'tasks';
  static const String idColum = TaskKeys.id;
  static const String titleColum = TaskKeys.title;
  static const String timeColum = TaskKeys.time;
  static const String dateColum = TaskKeys.date;
  static const String noteColum = TaskKeys.note;
  static const String categoryColum = TaskKeys.category;
  static const String isCompletedColum = TaskKeys.isCompleted;
}
