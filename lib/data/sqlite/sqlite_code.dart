String createPersona = '''CREATE TABLE IF NOT EXISTS Persona (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )''';

String createChat = '''CREATE TABLE IF NOT EXISTS Chat (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        createdAt TEXT NOT NULL
      )''';

String crearMessage = '''CREATE TABLE IF NOT EXISTS Message (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        date TEXT NOT NULL,
        message TEXT NOT NULL,
        personaId INTEGER NOT NULL,
        chatId INTEGER NOT NULL,
        FOREIGN KEY (personaId) REFERENCES Persona(id),
        FOREIGN KEY (chatId) REFERENCES Chat(id)
      )''';
