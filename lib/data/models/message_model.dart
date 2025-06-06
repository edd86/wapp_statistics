class MessageModel {
  int? id;
  DateTime date;
  String message;
  int personaId;
  int chatId;

  MessageModel({
    this.id,
    required this.date,
    required this.message,
    required this.personaId,
    required this.chatId,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      id: json['id'],
      date: DateTime.parse(json['date']),
      message: json['message'],
      personaId: json['personaId'],
      chatId: json['chatId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'message': message,
      'personaId': personaId,
      'chatId': chatId,
    };
  }
}
