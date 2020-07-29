
Future<void> main() async{


  var future=  Future.delayed(
      Duration(seconds: 3),
          ()=>12,
  );



  print('from main future is $future');

  //how to get the value 12?






}


