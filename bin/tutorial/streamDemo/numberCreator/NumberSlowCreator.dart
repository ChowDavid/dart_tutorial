
import 'dart:async';

class NumberSlowCreator {
  NumberSlowCreator() {

    Timer.periodic(Duration(seconds: 5), (timer) {
      _controller.sink.add(_count);
      _count++;

    });
    print('NumberCreator ended');
  }

  var _count =1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}