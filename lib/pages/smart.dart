import 'package:flutter/material.dart';

class Smart extends StatefulWidget {
  const Smart({Key? key}) : super(key: key);

  @override
  State<Smart> createState() => _SmartState();
}

class _SmartState extends State<Smart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("smart"),
      ),
    );
  }
}
