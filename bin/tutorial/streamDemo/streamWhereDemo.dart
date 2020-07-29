//https://dart.dev/articles/libraries/creating-streams

import 'numberCreator/NumberCreator.dart';

void main() {
  final myStream = NumberCreator().stream;

  myStream.where((event) => event % 2 == 0).listen((data) {
    print('Data $data');
  });
}
