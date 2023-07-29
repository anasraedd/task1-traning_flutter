import 'package:flutter/material.dart';
class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Center( child: Text('My Account', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),));
  }
}
