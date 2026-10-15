import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkBlue,
          titleTextStyle: TextStyle(color: AppColors.yellow, fontSize: 18),
        ),
        scaffoldBackgroundColor: AppColors.darkBlue,
      ),
    );
  }
}
