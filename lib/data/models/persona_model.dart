class PersonaModel {
  int? id;
  String name;

  PersonaModel({this.id, required this.name});

  factory PersonaModel.fromJson(Map<String, dynamic> json) {
    return PersonaModel(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
