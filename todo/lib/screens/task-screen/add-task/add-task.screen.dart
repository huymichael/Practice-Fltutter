import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task-data.model.dart';
import 'package:todo/model/task.model.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
