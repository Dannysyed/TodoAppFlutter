import 'package:flutter/material.dart';
import 'package:todo/models/todolist.dart';
import 'package:todo/widgets/todoList/todoitemm.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key, required this.taskData});

  final List<Todolists> taskData;

  @override
  State<Todolist> createState() {
    return _TodolistState();
  }
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskData.length,
      itemBuilder: (context, index) => TodoItem(
        id: widget.taskData[index].id,
        title: widget.taskData[index].title,
        assignedBy: widget.taskData[index].assignedBy,
        icon: widget.taskData[index].icon,
        assignee: widget.taskData[index].assignee,
        date: widget.taskData[index].date,
      ),
    );
  }
}
