class MessageEntity {
  final int? id;
  final DateTime date;
  final String message;
  final String person;
  final int chatId;

  MessageEntity({
    this.id,
    required this.date,
    required this.message,
    required this.person,
    required this.chatId,
  });
}
