import 'package:flutter/material.dart';

class Task {
  String name;
  bool isCompleted;

  Task(this.name, this.isCompleted);
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ToDoListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoListScreen extends StatefulWidget {
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<Task> tasks = [];

  void _addTask() {
    setState(() {
      tasks.add(Task('', false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do list'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(
              value: tasks[index].isCompleted,
              onChanged: (value) {
                setState(() {
                  tasks[index].isCompleted = value!;
                });
              },
            ),
            title: TextFormField(
              initialValue: tasks[index].name,
              onChanged: (value) {
                tasks[index].name = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter task...',
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
