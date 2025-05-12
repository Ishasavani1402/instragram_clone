import 'package:flutter/material.dart';
import 'package:instragram_clone/screens/splashscreen.dart';
// import 'package:instragram_clone/widgets/stories.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      theme: ThemeData.dark(),
    );
  }
}
