import 'package:flutter/material.dart';
import 'package:todomodel/controller/todo_controller.dart';
import 'package:todomodel/model/todo_model.dart';
// import 'package:todo/controller/todo_controller.dart';
// import 'package:todo/model/todo_model.dart';

class AddTodo extends StatefulWidget {
  AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final titleController = TextEditingController();

  final detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        toolbarHeight: 114,
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: 356,
              height: 26,
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: 'Title', hintStyle: TextStyle(fontSize: 26)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 356,
              height: 26,
              child: TextField(
                controller: detailController,
                decoration: InputDecoration(
                    hintText: 'Detail', hintStyle: TextStyle(fontSize: 26)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {
                 todoSingle = TodoModel(
                      title: titleController.text,
                      detail: detailController.text, isComplete: false);
                    
                  add();

                  Navigator.pop(context, true);
                },
                child: Container(
                  width: 386,
                  height: 65.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(147, 149, 211, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 92, 91, 91),
                            blurRadius: 2)
                      ]),
                  child: Center(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
