import 'package:flutter/material.dart';
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
        assignee: "Daniyal",
        date: "20March2019",
        icon: "work",
        id: "1",
        title: "Task1",
        assignedBy: "Kristen"),
    Todolists(
        assignee: "Kamil",
        date: "20March2019",
        icon: "work",
        id: "2",
        title: "Task2",
        assignedBy: "Kristen"),
    Todolists(
        assignee: "Kamil",
        date: "20March2019",
        icon: "work",
        id: "2",
        title: "Task2",
        assignedBy: "Kristen")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Taskey"),
        ),
        body: Todolist(
          taskData: tasks,
        ));
  }
}
