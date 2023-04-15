class User {
  int userId;
  int id;
  String title;
  String body;

  User(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
