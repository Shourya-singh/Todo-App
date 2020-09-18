import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallBox,
      this.deleteTaskCall});
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBox;
  final Function deleteTaskCall;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBox,
      ),
      onLongPress: deleteTaskCall,
    );
  }
}
