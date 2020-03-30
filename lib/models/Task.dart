class Task {
  bool isDone;
  final String title;

  Task({this.isDone = false, this.title});

  void toggleDone() {
    isDone = !isDone;
  }
}
