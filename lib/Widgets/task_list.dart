import 'package:flutter/material.dart';
import 'package:todom/Widgets/task_tile.dart';
import 'package:todom/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;
  const TaskList({super.key, required this.taskList});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.taskList[index].name,
          isChecked: widget.taskList[index].isDone,
          toggleFunction: (value) {
            setState(() {
              widget.taskList[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.taskList.length,
    );
  }
}
