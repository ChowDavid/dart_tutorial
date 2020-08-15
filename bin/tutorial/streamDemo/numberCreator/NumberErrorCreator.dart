
import 'dart:async';

class NumberErrorCreator {
  NumberErrorCreator() {

    Timer.periodic(Duration(milliseconds: 200), (timer) {
      print('again and again...');
      if (_count%10==0){
        _controller.addError(Exception('Error if count = $_count'));
      } else {
        _controller.sink.add(_count);
      }
      _count++;
      if (_count>=100){
        timer.cancel();
        _controller.close();
      }


    });
    print('NumberCreator ended');
  }

  var _count =1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}