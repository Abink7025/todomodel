import 'package:flutter/material.dart';
import 'package:todomodel/controller/todo_controller.dart';
import 'package:todomodel/model/todo_model.dart';

class EditTodo extends StatefulWidget {
  EditTodo({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  TextEditingController textEditingController = TextEditingController();

  TextEditingController detailEditingController = TextEditingController();

  get title => null;

  get detail => null;

  @override
  Widget build(BuildContext context) {
    print(tod[widget.index]);
    textEditingController.text = tod[widget.index].title;
    detailEditingController.text = tod[widget.index].detail;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 144,
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        title: Text(
          'Edit Task',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: 356,
              height: 29,
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: '', hintStyle: TextStyle(fontSize: 26)),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 356,
              height: 29,
              child: TextField(
                controller: detailEditingController,
                decoration: InputDecoration(
                    labelText: '', hintStyle: TextStyle(fontSize: 26)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    tod[widget.index].title = textEditingController.text;
                    tod[widget.index].detail = detailEditingController.text;

                    // edit(
                    //   widget.index, tod[widget.index]
                    // );
                    Navigator.pop(context, true);
                  },
                  child: Container(
                    width: 170,
                    height: 65.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(147, 149, 211, 1)),
                    child: Center(
                      child: Text(
                        'UPDATE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 170,
                    height: 65.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(147, 149, 211, 1)),
                    child: Center(
                      child: Text('CANCEL',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
