// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/pages/utils/todo_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todolist = [
    ['Make Todo', false],
    ['Learning Flutter', false]
  ];

  //function for changing the checkbox
  void checkBoxChanged(bool? value, int index) {
    todolist[index][1] = !todolist[index][1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 167, 237),
      appBar: AppBar(
        title: Center(child: Text('TO DO')),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) => todoTile(
          taskName: todolist[index][0],
          taskCompleted: todolist[index][1],
          onChanged: (value) => checkBoxChanged(value, index),
        ),
      ),
    );
  }
}
