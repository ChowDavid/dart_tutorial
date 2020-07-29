//https://dart.dev/articles/libraries/creating-streams
//https://www.youtube.com/watch?v=nQBpOIHE4eE

import 'numberCreator/NumberCreator.dart';

void main() {
  final myStream = NumberCreator().stream;

  myStream.listen((data) {
    print('Data $data');
  }).onDone(() {print('Done');});
}
