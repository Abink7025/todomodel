import 'package:flutter/material.dart';
import 'package:todomodel/controller/todo_controller.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 114,
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        title: Text('COMPLETE'),
      ),
      body: ListView.builder(
        itemCount: completed.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Container(
            width: 400,
            height: 85,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: Color.fromARGB(255, 92, 91, 91))
                ]),
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        completed.elementAt(index).title,
                        style: TextStyle(
                            color: const Color.fromRGBO(147, 149, 211, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: [
                      Text(
                        completed.elementAt(index).detail,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
