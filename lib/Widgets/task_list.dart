import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todom/Widgets/task_tile.dart';
import 'package:todom/models/task_data_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Consumer<TaskDataProvider>(
          builder: (context, taskData, child) {
            return TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              toggleFunction: (value) {
                taskData.toggleStatus(index);
              },
            );
          },
        );
      },
      itemCount: context.watch<TaskDataProvider>().tasks.length,
    );
  }
}
