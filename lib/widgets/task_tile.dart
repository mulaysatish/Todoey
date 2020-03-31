import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final Function checkboxCallBack;

  TaskTile({this.title, this.isDone, this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        Provider.of<TaskData>(context, listen: false).deleteTask(title);
      },
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
