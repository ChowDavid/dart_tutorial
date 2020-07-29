import 'dart:collection';
import 'dart:math';

void main(){
  Set<int> result =  HashSet();
  var random =  Random();
  while(result.length<7){
    var drawNumber = random.nextInt(45)+1;
    if (!result.contains(drawNumber)){
      result.add(drawNumber);
    }
  }
  print('The mark six + 1 result is $result');
}