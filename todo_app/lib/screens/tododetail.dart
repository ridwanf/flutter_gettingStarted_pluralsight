import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoDetail extends StatefulWidget {
  final Todo todo;
  TodoDetail({
    this.todo,
  });
  @override
  State<StatefulWidget> createState() => TodoDetailState();
}

class TodoDetailState extends State {
  Todo todo;
  TodoDetailState(this.todo);
  final _priorities = ["High", "Medium", "Low"];
  String _priority = "Low";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = todo.title;
    descriptionController.text = todo.description;
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(todo.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: titleController,
            style: textStyle,
            decoration: InputDecoration(
                labelText: "Title",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          TextField(
            controller: descriptionController,
            style: textStyle,
            decoration: InputDecoration(
                labelText: "Description",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          DropdownButton<String>(
            items: _priorities.map((String value) {
              return DropdownMenuItem<String>(
                child: Text(value),
                value: value,
              );
            }).toList(),
            style: textStyle,
            value: "Low",
            onChanged: null,
          )
        ],
      ),
    );
  }
}
