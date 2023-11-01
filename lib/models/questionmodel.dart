class Questions {
  String name;
  String question;
  int id;
  String title;

  Questions({
    required this.question,
    required this.title,
    required this.id,
    required this.name,
  });

  factory Questions.fromJson(Map<String, dynamic> map) {
    return Questions(
      name: map['user_name'],
      title: map['title'],
      question: map['content'],
      id: map['id'],
    );
  }
}
