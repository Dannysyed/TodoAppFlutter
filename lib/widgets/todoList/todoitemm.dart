import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.title,
      required this.date,
      required this.icon,
      required this.assignee,
      required this.assignedBy,
      required this.id});
  final String title;
  final String date;
  final String assignee;
  final String icon;
  final String id;
  final String assignedBy;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [const Text("Title:"), Text(title)],
          ),
          Row(
            children: [const Text("Date:"), Text(date)],
          ),
          Row(
            children: [const Text("AssignedBy:"), Text(assignedBy)],
          ),
        ],
      ),
    );
  }
}
