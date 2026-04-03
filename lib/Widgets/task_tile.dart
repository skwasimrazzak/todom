import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   const TaskTile({super.key});
//
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: Text(
//         "widget.title",
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       value: isChecked,
//       onChanged: (value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//     );
//     ;
//   }
// }

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final ValueChanged<bool?> toggleFunction;
  const TaskTile({
    super.key,
    required this.title,
    required this.isChecked,
    required this.toggleFunction,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      value: isChecked,
      onChanged: toggleFunction,
    );
  }
}
