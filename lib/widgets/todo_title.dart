import 'package:flutter/material.dart';
import 'package:todomodel/controller/todo_controller.dart';
import 'package:todomodel/model/todo_model.dart';
import 'package:todomodel/screen/edit_todo.dart';

class TodoTitile extends StatefulWidget {
  TodoTitile({super.key, required this.ontap, required this.index});

  final VoidCallback ontap;
  final int index;

  @override
  State<TodoTitile> createState() => _TodoTitileState();
}

bool updates = false;

class _TodoTitileState extends State<TodoTitile> {
  @override
  Widget build(BuildContext context) {
    print('object');
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        width: 400,
        height: 82,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Color.fromARGB(255, 92, 91, 91), blurRadius: 5)
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Text(
                    tod[widget.index].title,
                    // title!['title'],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(147, 149, 211, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    tod[widget.index].detail,
                    // title!['detail'],
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 130,
            ),
            IconButton(
                onPressed: () async {
                  final results = await Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => EditTodo(index: widget.index)),
                  );
                  // print(results);
                  setState(() {
                    updates = results ?? false;
                  });
                },
                icon: Icon(
                  Icons.edit_outlined,
                  color: Color.fromRGBO(179, 183, 238, 1),
                )),
            Expanded(
              child: IconButton(
                  onPressed: widget.ontap,
                  icon: Icon(Icons.delete_outlined,
                      color: Color.fromRGBO(179, 183, 238, 1))),
            ),
            IconButton(
                onPressed: () {
                  tod[widget.index].isComplete = true;
                  complete();
                  setState(() {});
                },
                icon: tod[widget.index].isComplete
                    ? Text('completed')
                    : Icon(Icons.check_circle_outline,
                        color: Color.fromRGBO(179, 183, 238, 1)))
          ],
        ),
      ),
    );
  }
}
