//https://dart.dev/articles/libraries/creating-streams
//https://www.youtube.com/watch?v=nQBpOIHE4eE

import 'numberCreator/NumberCreator.dart';

void main() {
  final myStream = NumberCreator().stream;

  myStream.where((event) => event % 2 == 0).listen((data) {
    print('Data $data');
  });
}
