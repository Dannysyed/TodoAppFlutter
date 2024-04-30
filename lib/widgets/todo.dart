import 'package:flutter/material.dart';
import 'package:todo/addtask.dart';
import 'package:todo/models/todolist.dart';
import 'package:todo/widgets/todoList/todolists.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() {
    return _TodoState();
  }
}

class _TodoState extends State<Todo> {
  final List<Todolists> tasks = [
    Todolists(
        title: "Task1",
        date: DateTime.now(),
        category: Category.work,
        description: "This is descrpition",
        status: true),
    Todolists(
        title: "Task2",
        date: DateTime.now(),
        category: Category.work,
        description: "This is descrpition",
        status: true),
    Todolists(
        title: "Task3",
        date: DateTime.now(),
        category: Category.work,
        description: "This is descrpition",
        status: true),
  ];

  void getModalOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => const Addtask());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Taskey"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Add a task"),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: getModalOverlay, child: const Icon(Icons.add))
              ],
            ),
            Todolist(taskData: tasks)
          ],
        ));
  }
}
