import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AllControllers(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class AllControllers {
  final TextEditingController lProgrammer = TextEditingController();
  final TextEditingController frameWork = TextEditingController();
}
