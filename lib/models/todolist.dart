import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final formatedDate = DateFormat.yMd();

enum Category { food, leisure, work, travel }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight,
  Category.work: Icons.work
};

class Todolists {
  Todolists(
      {required this.date,
      required this.category,
      required this.title,
      required this.description,
      required this.status})
      : id = uuid.v4();

  final String id;
  final String title;
  final DateTime date;
  final Category category;
  final String description;
  final bool status;
  String get formatedDateGetter {
    return formatedDate.format(date);
  }
}
