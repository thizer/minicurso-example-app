import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minicurso/mobx/todo_mobx.dart';

class TodoMobxPage extends StatefulWidget {
  @override
  _TodoMobxPageState createState() => _TodoMobxPageState();
}

class _TodoMobxPageState extends State<TodoMobxPage> {
  var _todoMobx = TodoMobx();

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
              itemCount: _todoMobx.content.length,
              itemBuilder: (BuildContext context, int i) {
                var item = _todoMobx.content[i];

                return ListTile(
                  leading: IconButton(
                    icon: Icon(item['status'] ? Icons.check_circle : Icons.check_circle_outline),
                    onPressed: () => _todoMobx.toggleStatus.call([item['id']]),
                  ),
                  title: Text("#${item['id']} ${item['title']}"),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () => _todoMobx.remove.call([item['id']]),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _todoMobx.addItem,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
