class Todolists {
  Todolists(
      {required this.assignee,
      required this.date,
      required this.icon,
      required this.id,
      required this.title,
      required this.assignedBy});

  final String id;
  final String title;
  final String assignee;
  final String date;
  final String icon;
  final String assignedBy;
}
