import 'package:flutter/material.dart';

class Addtask extends StatefulWidget {
  const Addtask({super.key});

  @override
  State<Addtask> createState() => _AddtaskState();
}

class _AddtaskState extends State<Addtask> {
  var _entertitle = '';
  var _enterdescription = '';
  var _enterDate = '';
  void getEnteredTitle(String titledata) {
    _entertitle = titledata;
  }

  void getEnteredDescription(String descriptiondata) {
    _enterdescription = descriptiondata;
  }

  void dateHandler() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(context: context, firstDate: firstDate, lastDate: now);
    print(showDatePicker);
  }

  void addHandler() {
    print(_entertitle);
    print(_enterdescription);
    print(_enterDate);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            onChanged: getEnteredTitle,
            maxLength: 15,
            decoration: const InputDecoration(label: Text("Title")),
          ),
          TextField(
            onChanged: getEnteredDescription,
            maxLength: 15,
            decoration: const InputDecoration(label: Text("description")),
          ),
          Row(
            children: [
              const Text("Select Date"),
              IconButton(
                  onPressed: dateHandler,
                  icon: const Icon(Icons.calendar_month))
            ],
          ),
          ElevatedButton(onPressed: addHandler, child: const Text("Add Task"))
        ],
      ),
    );
  }
}
