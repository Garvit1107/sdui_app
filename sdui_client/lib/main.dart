import 'package:flutter/material.dart';
import 'screens/sdui_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDUI Demo',
      home: const SDUIScreen(screenName: 'home'),
    );
  }
}
