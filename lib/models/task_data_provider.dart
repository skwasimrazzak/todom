import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todom/models/task.dart';

class TaskDataProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void toggleStatus(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
