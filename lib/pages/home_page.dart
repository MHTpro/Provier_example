import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/main.dart';
import 'package:test_project/pages/show_result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //get data
    final datas = context.watch<AllControllers>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.0,
                width: 300.0,
                child: TextField(
                  controller: datas.lProgrammer,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.teal,
                    labelText: "Language-programmer",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 50.0,
                width: 300.0,
                child: TextField(
                  controller: datas.frameWork,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.teal,
                    labelText: "Framework",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Result(),
                  ));
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
