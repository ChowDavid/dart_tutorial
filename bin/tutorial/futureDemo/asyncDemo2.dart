
import 'dart:io';

void main(){
  print('Before async');
  //Wait then the value return
  readNews();
  print('After async');


}

Future<void> readNews() async{
  print('War Start Today !!');
  await Future.delayed(const Duration(seconds: 5));
  print('War Ended!');
}

//https://programming-idioms.org/idiom/45/pause-execution-for-5-seconds/616/dart
//compare sleep().. vs await Future.delayed()...