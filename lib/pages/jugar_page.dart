import 'package:flutter/material.dart';

class JugarPage extends StatefulWidget {
  const JugarPage({super.key});

  @override
  State<JugarPage> createState() => _JugarPageState();
}

class _JugarPageState extends State<JugarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("JUGAR"),
      ),
    );
  }
}