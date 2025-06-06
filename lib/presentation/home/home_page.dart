import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:wapp_statistics/presentation/provider/theme_provider.dart';
import 'package:wapp_statistics/presentation/statistics/statistics_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeModeProvider) == ThemeMode.dark;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Wapp Estadísticas', style: TextStyle(fontSize: 20.sp)),
                SizedBox(height: 7.h),
                Image.asset('assets/images/man-texting.png', width: 60.w),
                SizedBox(
                  height: 8.h,
                  width: 85.w,
                  child: Center(
                    child: Text(
                      'Tambien puede exportar el archivo directamente desde WhatsApp',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                  width: 85.w,
                  child: Center(
                    child: Text(
                      'La aplicación trabaja de forma local, por tal razón no se almacena ni comercializa su información con terceros',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ),
                ),
                TextButton(
                  child: Text('Cargar Archivo'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StatisticsPage()),
                    );
                  },
                ),
                SizedBox(height: 7.h),
                ElevatedButton.icon(
                  label: Text('Historial'),
                  icon: Icon(Icons.history_sharp),
                  onPressed: () {},
                ),
              ],
            ),
            Positioned(
              top: 2.5.h,
              right: 0,
              child: IconButton(
                icon: Icon(
                  isDark ? Icons.light_mode : Icons.dark_mode,
                  size: 22.sp,
                ),
                onPressed: () {
                  ref.read(themeModeProvider.notifier).toggleTheme();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
