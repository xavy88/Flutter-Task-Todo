import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school_outlined, Colors.lightBlue),
  health(Icons.favorite_outline_outlined, Colors.redAccent),
  home(Icons.home_max_outlined, Colors.blueGrey),
  other(Icons.calendar_month_outlined, Colors.deepPurple),
  personal(Icons.person_2_outlined, Colors.greenAccent),
  shopping(Icons.shopping_bag_outlined, Colors.pinkAccent),
  Travel(Icons.flight_class_outlined, Colors.deepOrangeAccent),
  Work(Icons.school_outlined, Colors.lightBlue),
  Car(Icons.car_rental_outlined, Colors.yellowAccent);

  final IconData icon;
  final Color color;
  const TaskCategories(this.icon, this.color);
}
