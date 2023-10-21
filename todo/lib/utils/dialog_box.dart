import 'package:flutter/material.dart';

class dialogBox extends StatelessWidget {
  const dialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[200],
      content: Container(
        height: 150,
        child: Column(
          children: [
            //getting user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task..',
              ),
              //controller: ,
            ),
            //buttons --> save and cancle button
          ],
        ),
      ),
    );
  }
}
