class TodoModel {
  String title;
  String detail;
  bool isComplete;
  TodoModel(
      {required this.title, required this.detail, this.isComplete = false});
}
