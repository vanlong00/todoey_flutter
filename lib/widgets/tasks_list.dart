import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

// ignore: use_key_in_widget_constructors
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTitle(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (newValue) {
              taskData.updateTask(task);
            },
            onLongPressed: () {
              taskData.deleteTask(task);
            },
          );
        },
        padding: const EdgeInsets.only(top: 20.0),
        itemCount: taskData.taskCount,
      );
    });
  }
}
