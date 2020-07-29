//https://dart.dev/articles/libraries/creating-streams
//https://www.youtube.com/watch?v=nQBpOIHE4eE
import 'dart:async';

import 'numberCreator/NumberSlowCreator.dart';

void main(){
  final myStream = NumberSlowCreator().stream.asBroadcastStream();


  myStream.listen((event)  {
    if (event%5==0)  {
      Timer(const Duration(seconds: 2),()  { print('Slow pipe 1 $event ${DateTime.now()}');});
    } else {
      print('Slow pipe 2 $event');
    }
  });


  myStream.listen((data) =>print('Data again: $data'));


}

void loop(int l){
  for (var i=0;i<10000000;i++){
    for (var j=0;j<l;j++){}
  }
}