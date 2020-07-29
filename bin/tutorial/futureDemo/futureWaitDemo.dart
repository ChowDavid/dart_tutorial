
Future<void> main() async{

  var allResult=[];
  var future=  Future.delayed(
      Duration(seconds: 3),
          ()=>12,
  );

  var future2=  Future.delayed(
    Duration(seconds: 5),
        ()=>13,
  );
  var future3=  Future.delayed(
    Duration(seconds: 7),
        ()=>14,
  );
  var futures = <Future>[];
  futures.add(future);
  futures.add(future2);
  futures.add(future3);

  await Future.wait(futures).then((value){
    print('Future value come...$value');
    allResult.addAll(value);
  });

  print('from main future is $allResult');






}


