import 'package:wapp_statistics/data/mappers/chat_mapper.dart';
import 'package:wapp_statistics/data/source/database_helper.dart';
import 'package:wapp_statistics/domain/entities/chat_entity.dart';
import 'package:wapp_statistics/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  @override
  Future<ChatEntity> createChat(ChatEntity chatEntity) async {
    final dbHelper = DatabaseHelper.instance;
    final db = await dbHelper.database;
    final model = ChatMapper.toModel(chatEntity);
    final result = await db.insert('Chats', model.toJson());
    return ChatMapper.toEntity(model.copyWith(id: result));
  }
}
