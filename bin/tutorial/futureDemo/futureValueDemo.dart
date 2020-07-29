
void main(){
  var futureValue;
  var future= Future.value(12).then((value) => futureValue = value).whenComplete((){
    print('Completed');
    print(futureValue);
  });


  print('from main future is $future');
  print('from main futureValue is $futureValue');


  var f1=foo();
  print('future 2 $f1');
}


Future<int> foo() async{
  var future = await Future.value(12);
  print('Future value = $future');
  return future;
}