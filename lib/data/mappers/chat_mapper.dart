import 'package:wapp_statistics/data/models/chat_model.dart';
import 'package:wapp_statistics/domain/entities/chat_entity.dart';

class ChatMapper {
  static ChatModel toModel(ChatEntity entity) =>
      ChatModel(id: entity.id!, name: entity.name, createdAt: entity.createdAt);

  static ChatEntity toEntity(ChatModel model) =>
      ChatEntity(id: model.id, name: model.name, createdAt: model.createdAt);
}
