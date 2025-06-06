import 'package:wapp_statistics/domain/entities/chat_entity.dart';

abstract class ChatRepository {
  Future<ChatEntity> createChat(ChatEntity chatEntity);
}
