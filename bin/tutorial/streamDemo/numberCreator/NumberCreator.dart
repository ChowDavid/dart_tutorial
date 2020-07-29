
import 'dart:async';

class NumberCreator {
  NumberCreator() {

    Timer.periodic(Duration(milliseconds: 200), (timer) {
      _controller.sink.add(_count);
      _count++;

    });
    print('NumberCreator ended');
  }

  var _count =1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}