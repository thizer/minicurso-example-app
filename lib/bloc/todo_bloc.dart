import 'dart:async';

class TodoBloc {
  int _id = 0;

  TodoBloc() {
    addItem();
  }

  List<Map<String, dynamic>> todo = [];

  StreamController _streamController = StreamController();

  Stream get output => _streamController.stream;

  StreamSink get _input => _streamController.sink;

  void addItem() {
    Map<String, dynamic> item = {
      "id": _id++,
      "title": "Beber Água",
      "status": false,
    };

    todo.add(item);

    _input.add(todo);
  }

  void toggleStatus(int id) {
    Map<String, dynamic> item = todo.firstWhere((i) => i['id'] == id);
    item['status'] = !item['status'];

    _input.add(todo);
  }

  void remove(int id) {
    todo.removeWhere((item) => item['id'] == id);

    _input.add(todo);
  }

  void dispose() {
    _streamController.close();
  }
}
