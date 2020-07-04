import 'dart:collection';
import 'dart:math';

void main(){
  Set<int> result = new LinkedHashSet();
  Random random = new Random();
  while(result.length<7){
    int drawNumber = random.nextInt(45)+1;
    if (!result.contains(drawNumber)){
      result.add(drawNumber);
    }
  }
  print("The mark six + 1 result is ${result}");
}