import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBox: (bool checkBoxState) {
                  taskData.updateTask(task);
                },
                deleteTaskCall: () {
                  taskData.deleteTask(index);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
