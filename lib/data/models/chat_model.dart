class ChatModel {
  int? id;
  String name;
  DateTime createdAt;

  ChatModel({this.id, required this.name, required this.createdAt});

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'],
      name: json['name'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'createdAt': createdAt.toIso8601String()};
  }

  ChatModel copyWith({int? id, String? name, DateTime? createdAt}) {
    return ChatModel(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
