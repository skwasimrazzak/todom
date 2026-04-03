import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todom/Widgets/task_tile.dart';
// import 'package:todom/models/task.dart';
import 'package:todom/models/task_data_provider.dart';

class TaskList extends StatefulWidget {
  // final List<Task> taskList;
  const TaskList({
    super.key,
    // , required this.taskList
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          // title: widget.taskList[index].name,
          title: context.watch<TaskDataProvider>().tasks[index].name,
          isChecked: context.watch<TaskDataProvider>().tasks[index].isDone,
          toggleFunction: (value) {
            // setState(() {
            //   context.read<TaskDataProvider>().tasks[index].toggleDone();
            // });
            context.read<TaskDataProvider>().toggleStatus(index);
          },
        );
      },
      itemCount: context.watch<TaskDataProvider>().tasks.length,
    );
  }
}
