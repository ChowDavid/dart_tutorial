
import 'dart:async';

class NumberDuplicateCreator {
  NumberDuplicateCreator() {
    Timer.periodic(Duration(milliseconds: 200), (timer) {
      _controller.sink.add(_count.floor());
      _count = _count + 0.5;

    });
    print('NumberCreator ended');
  }

  double _count =1.0;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}