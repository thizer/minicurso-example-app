import 'package:mobx/mobx.dart';

part 'todo_mobx_codegen.g.dart';

class TodoMobxCodegen = TodoMobxCodegenBase with _$TodoMobxCodegen;

abstract class TodoMobxCodegenBase with Store {
  TodoMobxCodegenBase() {
    addItem();
  }

  int _id = 0;

  @observable
  ObservableList content = ObservableList();

  @action
  addItem() {
    Map<String, dynamic> item = {
      "id": _id++,
      "title": "Beber Água",
      "status": false,
    };

    content.add(item);
  }

  toggleStatus(int id) {
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

  remove(int id) {
    content.removeWhere((item) => item['id'] == id);
  }
}
