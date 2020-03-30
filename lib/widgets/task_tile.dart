import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final Function checkboxCallBack;

  TaskTile({this.title, this.isDone, this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
