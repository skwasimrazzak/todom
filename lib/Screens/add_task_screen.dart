import 'package:flutter/material.dart';
import 'package:todom/Screens/task_screen.dart';
import 'package:todom/Widgets/task_list.dart';
import 'package:todom/models/task.dart';

class AddTaskScreen extends StatefulWidget {
  final List<Task> taskList;
  final Function addTask;
  const AddTaskScreen({
    super.key,
    required this.taskList,
    required this.addTask,
  });

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
            // onChanged: (newTaskWritten) {
            //   newTask = newTaskWritten;
            // },
          ),
          SizedBox(height: 10.0),

          ElevatedButton(
            onPressed: () {
              widget.addTask(Task(name: _controller.text));
              // widget.addTask(_controller.text);
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
