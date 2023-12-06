// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  //final TaskCategory category;
  final bool isCompleted;

  Task({
    this.id,
    required this.title,
    required this.note,
    required this.time,
    required this.date,
    required this.isCompleted,
  });
}
