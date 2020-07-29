//https://dart.dev/articles/libraries/creating-streams

import 'numberCreator/NumberCreator.dart';

void main(){
  final myStream = NumberCreator().stream;

  final subscription = myStream.map((event) => 'Number $event').listen((data) {
    print('Data $data');
  });



}