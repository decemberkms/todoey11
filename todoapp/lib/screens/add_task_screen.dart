import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(String?)? addTaskCallback;
  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String? typedValue;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 30.0,
          right: 30.0,
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            onChanged: (value) {
              print(value);
              typedValue = value;
            },
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.lightBlueAccent,
              ),
            ),
            onPressed: () {
              addTaskCallback!(typedValue);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          )
        ]),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
