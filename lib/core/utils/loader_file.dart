// ignore_for_file: use_build_context_synchronously

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:wapp_statistics/core/utils/process_text.dart';

class LoaderFile {
  static Future<void> pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['zip', 'txt'],
    );

    if (result != null) {
      String filePath = result.files.single.path!;
      String extension = p.extension((filePath).toLowerCase());

      if (extension == '.txt') {
        ProcessText.processTextFile(filePath, context);
      } else if (extension == '.zip') {
        _processZipFile(filePath, context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Formato de archivo no soportado')),
        );
      }
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('No se selecciono archivo')));
    }
  }

  static void _processZipFile(String filePath, BuildContext context) {}
}
