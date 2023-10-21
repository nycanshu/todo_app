// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class todoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const todoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            //checked box
            Checkbox(value: taskCompleted, onChanged: onChanged),
            //todo text
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 67, 174, 70),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
