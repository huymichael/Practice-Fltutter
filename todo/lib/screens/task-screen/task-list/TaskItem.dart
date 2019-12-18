import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final bool isChecked;
  final String taskLabel;
  final Function checkboxCallback;
  const TaskItem({this.isChecked, this.taskLabel, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskLabel,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
