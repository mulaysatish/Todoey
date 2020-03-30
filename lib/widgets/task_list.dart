import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        String title = widget.tasks[index].title;
        bool isDone = widget.tasks[index].isDone;
        return TaskTile(
          title: title,
          isDone: isDone,
          checkboxCallBack: (newValue) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
