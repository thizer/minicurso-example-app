import 'package:mobx/mobx.dart';

class TodoMobx {
  int _id = 0;

  TodoMobx() {
    addItem = Action(_addItem);

    toggleStatus = Action(_toggleStatus);

    remove = Action(_remove);

    autorun((_) {
      _addItem();
    });
  }

  ObservableList content = ObservableList();

  Action addItem;

  Action toggleStatus;

  Action remove;

  void _addItem() {
    Map<String, dynamic> item = {
      "id": _id++,
      "title": "Beber Água",
      "status": false,
    };

    content.add(item);
  }

  void _toggleStatus(int id) {
    //
    // Recupera o item que procuramos
    Map<String, dynamic> item = content.firstWhere((i) => i['id'] == id);
    item['status'] = !item['status'];

    // Aqui eh uma treta. Fazemos esse sort aqui para
    // forcar a lista a ser atualizada, pois apenas mudar
    // o valor do item nao faz isso.
    content.sort((a, b) {
      if (a['id'] == b['id']) {
        return 0;
      }
      return a['id'] > b['id'] ? 1 : -1;
    });
  }

  void _remove(int id) {
    content.removeWhere((item) => item['id'] == id);
  }
}
