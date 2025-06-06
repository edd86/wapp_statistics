class ChatModel {
  int? id;
  String nombre;
  DateTime createdAt;

  ChatModel({this.id, required this.nombre, required this.createdAt});

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'],
      nombre: json['nombre'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
