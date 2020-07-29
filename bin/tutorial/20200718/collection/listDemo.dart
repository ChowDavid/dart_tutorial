

//https://api.dart.dev/stable/2.8.4/dart-core/List-class.html
void main(List<String> args){
  //define
  List list1,list2,list3,list4;
  //assign
  list1 = [1,2,3];
  list2 = [1,true,'string',list1];
  list3 = [1,true,'string',list1,list3];
  list4 = <int>[];


  print(list2);
  list1.add(4);
  print(list2);


  list4.add(1234);
  //modify
  list1.add(4);
  list2.add(list2);



  //print(list2);
  //print(list2[3]);
  //print(list2[4][1]);
  //print(list2[4][3][1]);
  print('end');
}