import 'package:flutter/material.dart';
import 'package:todomodel/controller/todo_controller.dart';
import 'package:todomodel/model/todo_model.dart';
import 'package:todomodel/screen/add_todo.dart';
import 'package:todomodel/screen/complete_screen.dart';
import 'package:todomodel/widgets/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool update = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 220, 247, 1),
      appBar: AppBar(
        toolbarHeight: 118,
        title: Text(
          'TODO APP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 42,
              )),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tod.length,
              itemBuilder: (context, index) {
                return TodoTitile(
                  ontap: () {
                    setState(() {
                      delete(index);
                    });
                  },
                  index: index,
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Color.fromRGBO(138, 140, 202, 1),
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddTodo(),
              ));
              setState(() {
                update = result ?? false;
              });
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 68,
        color: Colors.white,
        child: Row(
          children: [
            Spacer(),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      print('List');
                    },
                    icon: Icon(
                      Icons.list,
                      color: Color.fromRGBO(138, 140, 202, 1),
                    )),
                Text(
                  'All',
                  style: TextStyle(color: Color.fromRGBO(138, 140, 202, 1)),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CompleteScreen(),
                      ));
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.done,
                      color: Color.fromRGBO(138, 140, 202, 1),
                    )),
                Text(
                  'Complete',
                  style: TextStyle(color: Color.fromRGBO(138, 140, 202, 1)),
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
