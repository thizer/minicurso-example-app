import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minicurso/mobx/todo_mobx.dart';
import 'package:minicurso/mobx_codegen/todo_mobx_codegen.dart';

class TodoMobxPage extends StatelessWidget {
  final _todoMobx = TodoMobx();
  final _todoMobxCodegen = TodoMobxCodegen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Mobx Page'),
      ),
      body: Center(
        child: Observer(
          builder: (BuildContext context) {
            return ListView.builder(
              itemCount: _todoMobxCodegen.content.length,
              itemBuilder: (BuildContext context, int i) {
                var item = _todoMobxCodegen.content[i];

                return ListTile(
                  leading: IconButton(
                    icon: Icon(item['status'] ? Icons.check_circle : Icons.check_circle_outline),
                    onPressed: () => _todoMobxCodegen.toggleStatus(item['id']),
                  ),
                  title: Text("#${item['id']} ${item['title']}"),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () => _todoMobxCodegen.remove(item['id']),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _todoMobxCodegen.addItem,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
