import 'package:flutter/material.dart';

class DeportesPage extends StatefulWidget {
  const DeportesPage({super.key});

  @override
  State<DeportesPage> createState() => _DeportesPageState();
}

class _DeportesPageState extends State<DeportesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("DEPORTES"),
      ),
    );
  }
}