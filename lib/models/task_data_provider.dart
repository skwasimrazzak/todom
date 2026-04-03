import 'package:flutter/cupertino.dart';
import 'package:todom/models/task.dart';

class TaskDataProvider extends ChangeNotifier {
  List<Task> tasks = [];
  void addNewTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
    // Navigator.pop(context);
  }

  void toggleStatus(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
