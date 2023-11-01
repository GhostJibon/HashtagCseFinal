class Replies {
  String name;
  String answer;

  Replies({
    required this.answer,
    required this.name,
  });

  factory Replies.fromJson(Map<String, dynamic> map) {
    return Replies(
      answer: map['content'],
      name: map['user_name'],
    );
  }
}
