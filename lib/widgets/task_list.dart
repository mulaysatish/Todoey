import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            String title = taskData.tasks[index].title;
            bool isDone = taskData.tasks[index].isDone;
            return TaskTile(
              title: title,
              isDone: isDone,
              checkboxCallBack: (newValue) {
                taskData.toggleTaskState(index);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
