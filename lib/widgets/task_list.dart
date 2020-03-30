import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy bread'),
    Task(title: 'Buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      String title = tasks[index].title;
      bool isDone = tasks[index].isDone;
      return TaskTile(
        title: title,
        isDone: isDone,
        checkboxCallBack: (neeCheckedValue) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    }, itemCount: tasks.length,);
  }
}
