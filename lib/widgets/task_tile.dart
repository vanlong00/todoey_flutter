import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskTitle extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkBoxCallBack;
  final VoidCallback? onLongPressed;

  const TaskTitle({Key? key, this.isChecked, this.taskTitle, this.checkBoxCallBack, this.onLongPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        // onChanged: toggleCheckboxState,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}


