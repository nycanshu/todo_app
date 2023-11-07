// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/utils/dialog_box.dart';
import 'package:todo/utils/todo_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final _controller = TextEditingController();
  List todolist = [
    ['Make Todo', false],
    ['Learning Flutter', false]
  ];

  //function for changing the checkbox
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  //function for saving new tasks
  void saveNewTask() {
    setState(() {
      todolist.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
    _controller.clear();
  }

  //function to create new task in floating action button
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return dialogBox(
          controller: _controller,
          onCancel: () => Navigator.of(context).pop(),
          onSave: saveNewTask,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 167, 237),
      appBar: AppBar(
        title: Center(child: Text('TO DO')),
        elevation: 0.0,
      ),
      //adding new tasks through floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
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
