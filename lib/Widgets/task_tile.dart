import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final ValueChanged<bool?> toggleFunction;
  final GestureLongPressCallback deleteFunction;
  const TaskTile({
    super.key,
    required this.title,
    required this.isChecked,
    required this.toggleFunction,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: deleteFunction,
      child: CheckboxListTile(
        title: Text(
          title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        value: isChecked,
        onChanged: toggleFunction,
      ),
    );
  }
}
