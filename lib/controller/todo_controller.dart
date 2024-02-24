import 'package:todomodel/model/todo_model.dart';

List<TodoModel> tod = [];
TodoModel? todoSingle;
List<TodoModel> completed = [];

void add() {
  tod.add(todoSingle!);
  print(todoSingle);
  print(tod);
}

void delete(int index) {
  tod.removeAt(index);
}

void edit(int index, TodoModel edit) {
  // tod[index]=
}

void complete() {
  tod.forEach((element) {
    if (element.isComplete == true) {
      completed.add(element);
      print(completed);
    }
  });
}
