import 'package:flutter/material.dart';
import 'screens/feed_reportes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reportes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedReportesScreen(),
    );
  }
}
