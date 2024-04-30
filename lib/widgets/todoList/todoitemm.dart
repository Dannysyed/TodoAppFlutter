import 'package:flutter/material.dart';
import 'package:todo/models/todolist.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.title,
      required this.date,
      required this.category,
      required this.description,
      required this.status,
      required this.id});
  final String title;
  final DateTime date;
  final String description;
  final Category category;
  final String id;
  final bool status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(date.toString(), style: const TextStyle(fontSize: 15)),
                    Text(description, style: const TextStyle(fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.delete)),
                    const SizedBox(width: 20),
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.edit))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
