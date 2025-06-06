// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:wapp_statistics/core/utils/adapters.dart';
import 'package:wapp_statistics/data/repositories/chat_repository_impl.dart';
import 'package:wapp_statistics/domain/entities/chat_entity.dart';
import 'package:wapp_statistics/domain/entities/message_entity.dart';

class ProcessText {
  static void processTextFile(String filePath, BuildContext context) async {
    try {
      File file = File(filePath);
      List<String> lines = await file.readAsLines();
      String longName = p.basename(filePath);
      final ChatEntity chat = ChatEntity(
        name: longName.split(' ').last,
        createdAt: DateTime.now(),
      );

      final chatRepository = ChatRepositoryImpl();
      //TODO: Agregar Mensajes

      final newChat = await chatRepository.createChat(chat);

      for (String line in lines) {
        String timeHour = line.split('-')[0];
        String messagePerson = line.split('-')[1].trim();
        MessageEntity messageEntity = MessageEntity(
          date: Adapters.convertDate(timeHour),
          message: Adapters.getMessage(messagePerson),
          person: Adapters.getPerson(messagePerson),
          chatId: newChat.id!,
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al procesar el archivo TXT')),
      );
    }
  }
}
