import 'package:flutter/material.dart';
import 'tasks_list.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallback;
  TaskTile({this.isChecked = false, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
