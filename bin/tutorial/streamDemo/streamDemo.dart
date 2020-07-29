//https://dart.dev/articles/libraries/creating-streams

import 'numberCreator/NumberCreator.dart';

void main() {
  final myStream = NumberCreator().stream;

  myStream.listen((data) {
    print('Data $data');
  });
}
