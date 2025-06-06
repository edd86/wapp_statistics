import 'package:wapp_statistics/data/models/message_model.dart';
import 'package:wapp_statistics/domain/entities/message_entity.dart';

class MessageMapper {
  static MessageModel toModel(MessageEntity entity) => MessageModel(
    id: entity.id,
    date: entity.date,
    message: entity.message,
    person: entity.person,
    chatId: entity.chatId,
  );

  static MessageEntity toEntity(MessageModel model) => MessageEntity(
    id: model.id,
    date: model.date,
    message: model.message,
    person: model.person,
    chatId: model.chatId,
  );
}
