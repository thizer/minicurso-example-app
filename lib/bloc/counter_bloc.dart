import 'dart:async';

class CounterBloc {
  CounterBloc() {
    _input.add(_counter);
  }

  int _counter = 0;

  StreamController<int> _streamController = StreamController();

  Stream<int> get output => _streamController.stream;

  StreamSink<int> get _input => _streamController.sink;

  void increment() {
    _counter++;

    _input.add(_counter);
  }

  void dispose() {
    _streamController.close();
  }
}
