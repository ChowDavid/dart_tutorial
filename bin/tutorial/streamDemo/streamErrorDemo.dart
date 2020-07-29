//https://dart.dev/articles/libraries/creating-streams

import 'numberCreator/NumberCreator.dart';
import 'numberCreator/NumberErrorCreator.dart';

void main(){
  final myStream = NumberErrorCreator().stream;

  final subscription = myStream.listen(
          (data)=>print('Data inner $data'),
          onError: (e)=>print(e),
          onDone: ()=> print('Done!'),
          cancelOnError: false
  );

  subscription.cancel();
  subscription.resume();


}