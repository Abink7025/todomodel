import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('1222');
      },
      child: Container(
        width: 170,
        height: 65.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromRGBO(147, 149, 211, 1),
            boxShadow: [
              BoxShadow(blurRadius: 2, color: Color.fromARGB(255, 92, 91, 91))
            ]),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
