//https://dart.dev/articles/libraries/creating-streams


import 'numberCreator/NumberDuplicateCreator.dart';

void main(){
  final myStream = NumberDuplicateCreator().stream;

  final subscription = myStream.distinct().listen((data) {
    print('Data $data');
  });



}