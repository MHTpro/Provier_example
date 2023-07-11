import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/main.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final allData = context.watch<AllControllers>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Text(
            "Information: ${allData.lProgrammer.text}\n\n${allData.frameWork.text}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
