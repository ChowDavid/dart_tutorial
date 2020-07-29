
import 'dart:async';

class NumberStopCreator {
  NumberStopCreator() {

    Timer.periodic(Duration(milliseconds: 200), (timer) {
      _controller.sink.add(_count);
      _count++;
      if(_count>=100){
        timer.cancel();
      }
    });
    print('NumberCreator ended');
  }

  var _count =1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}