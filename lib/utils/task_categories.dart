import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school_outlined, Colors.lightBlue),
  health(Icons.favorite_outline_outlined, Colors.redAccent),
  home(Icons.home_max_outlined, Colors.blueGrey),
  other(Icons.calendar_month_outlined, Colors.deepPurple),
  personal(Icons.person_2_outlined, Colors.greenAccent),
  shopping(Icons.shopping_bag_outlined, Colors.red),
  travel(Icons.flight, Colors.deepOrangeAccent),
  work(Icons.work_history_outlined, Colors.green),
  car(Icons.car_rental_outlined, Colors.yellowAccent);

  static TaskCategories stringToCategory(String name) {
    try {
      return TaskCategories.values.firstWhere(
        (category) => category.name == name,
      );
    } catch (e) {
      return TaskCategories.other;
    }
  }

  final IconData icon;
  final Color color;
  const TaskCategories(this.icon, this.color);
}
