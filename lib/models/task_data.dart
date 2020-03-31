import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy bread'),
    Task(title: 'Buy eggs'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    _tasks.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void toggleTaskState(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(String titleToDelete){
    for(Task task in _tasks){
      if(task.title == titleToDelete){
        _tasks.remove(task);
        notifyListeners();
        break;
      }
    }
  }
}
