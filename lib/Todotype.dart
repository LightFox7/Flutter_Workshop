class Todo {
  final int id;
  final String title;
  final String desc;
  int done;

  Todo({this.id, this.title, this.desc, this.done});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'done': done,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Todo{id: $id, title: $title, desc: $desc, done: $done}';
  }

  void isitdone() {
    if (done == 1) {
      this.done = 0;
    } else {
      this.done = 1;
    }
  }
}
