class TaskItem {
  final int id;
  final String title;
  final String description;

  TaskItem({
    required this.id,
    required this.title,
    required this.description,
  });

  factory TaskItem.fromJson(Map<String, dynamic> json) {
    String descriptionText = '';

    if (json.containsKey('description')) {
      descriptionText = json['description'] ?? '';
    } else if (json.containsKey('completed')) {
      descriptionText = json['completed'] == true
          ? 'Status: selesai'
          : 'Status: belum selesai';
    }

    return TaskItem(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: descriptionText,
    );
  }
}