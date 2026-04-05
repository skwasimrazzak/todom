import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todom/models/task.dart';
import 'package:todom/models/task_data_provider.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _controller = TextEditingController();
  String? newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          TextField(
            controller: _controller,
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),

          ElevatedButton(
            onPressed: () {
              context.read<TaskDataProvider>().addNewTask(
                Task(name: _controller.text),
              );
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('Add', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
