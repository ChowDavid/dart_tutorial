//https://dart.dev/articles/libraries/creating-streams
//https://www.youtube.com/watch?v=nQBpOIHE4eE

import 'numberCreator/NumberDuplicateCreator.dart';

void main() {
  final myStream = NumberDuplicateCreator().stream;

  myStream.distinct().listen((data) {
    print('Data $data');
  });
}
