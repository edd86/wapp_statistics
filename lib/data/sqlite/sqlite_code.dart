String createChat = '''CREATE TABLE IF NOT EXISTS Chats (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        createdAt TEXT NOT NULL
      )''';

String crearMessage = '''CREATE TABLE IF NOT EXISTS Messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        date TEXT NOT NULL,
        message TEXT NOT NULL,
        personaId INTEGER NOT NULL,
        chatId INTEGER NOT NULL,
        FOREIGN KEY (personaId) REFERENCES Persona(id),
        FOREIGN KEY (chatId) REFERENCES Chat(id)
      )''';
