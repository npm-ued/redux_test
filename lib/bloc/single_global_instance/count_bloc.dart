import 'dart:async';

class CountBLoC {
  int _count = 0;
  var _countController = StreamController<int>.broadcast();
  Stream<int> get stream => _countController.stream;

  int get value => _count;

  increment() {
    print('increment');
    _countController.sink.add(++_count);
  }

  dispose() {
    _countController.close();
  }
}

CountBLoC bLoC = CountBLoC();