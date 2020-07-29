//https://dart.dev/articles/libraries/creating-streams

import 'numberCreator/NumberDuplicateCreator.dart';

void main() {
  final myStream = NumberDuplicateCreator().stream;

  myStream.distinct().listen((data) {
    print('Data $data');
  });
}
