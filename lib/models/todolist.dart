class Todolists {
  Todolists(
      {required this.date,
      required this.icon,
      required this.id,
      required this.title,
      required this.description,
      required this.status});

  final String id;
  final String title;
  final String date;
  final String icon;
  final String description;
  final bool status;
}
