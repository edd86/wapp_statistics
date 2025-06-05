import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:wapp_statistics/core/constants/app_themes.dart';
import 'package:wapp_statistics/presentation/home/home_page.dart';
import 'package:wapp_statistics/provider/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return Sizer(
      builder: (context, orientation, screenType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.getLightTheme(context),
        darkTheme: AppThemes.getDarkTheme(context),
        themeMode: themeMode,
        home: HomePage(),
      ),
    );
  }
}
