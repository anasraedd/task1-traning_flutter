import 'package:flutter/material.dart';

class MyCarScreen extends StatefulWidget {
  const MyCarScreen({Key? key}) : super(key: key);

  @override
  State<MyCarScreen> createState() => _MyCarScreenState();
}

class _MyCarScreenState extends State<MyCarScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center( child: Text('My Car', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),));
  }
}
