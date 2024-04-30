import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.title,
      required this.date,
      required this.icon,
      required this.description,
      required this.status,
      required this.id});
  final String title;
  final String date;
  final String description;
  final String icon;
  final String id;
  final bool status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
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
              children: [const Text("description:"), Text(description)],
            ),
          ],
        ),
      ),
    );
  }
}
