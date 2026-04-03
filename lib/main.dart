import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todom/Screens/task_screen.dart';
import 'package:todom/models/task_data_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskDataProvider>(
      create: (context) => TaskDataProvider(),
      child: MaterialApp(home: TaskScreen(), debugShowCheckedModeBanner: false),
    );
  }
}
