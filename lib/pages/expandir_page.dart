import 'package:flutter/material.dart';

class ExpandirPage extends StatefulWidget {
  const ExpandirPage({super.key});

  @override
  State<ExpandirPage> createState() => _ExpandirPageState();
}

class _ExpandirPageState extends State<ExpandirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("EXPANDIR"),
      ),
    );
  }
}
