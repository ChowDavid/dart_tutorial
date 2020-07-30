import '../streamDemo/numberCreator/NumberCreator.dart';

void main() {

/*
  var futureSum = await getFutureTotal(NumberCreator().stream);
  print(futureSum);
*/
  getFutureTotal(NumberCreator().stream).then((value) => print('Future $value'));
  
  var sum = getTotal([1,2,3,4,5]);

  print('Sum :$sum');
  

}


Future<int> getFutureTotal(Stream<int> numbers) async{
  var sum=0;
  await for (var i in numbers){
    sum =sum + i;
  }
  return sum;
}

int getTotal(List<int> numbers){
  var sum=0;
  for (var i in numbers){
    sum =sum + i;
  }
  return sum;
}