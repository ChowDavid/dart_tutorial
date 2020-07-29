
void main(){
  var futureValue;
  var future= Future.error(Exception('FutureError'));
  future.then((value) => print('Then')).catchError((e)=>print(e)).whenComplete(() => print('completed'));


  print('from main future is $future');
  print('from main futureValue is $futureValue');



}


