import 'dart:collection';

void main(List<String> args){

  Map map,map2,map3;
   map = {'a':1,'b':2,'c':3,'d':4,'c':5};

   map2 =  HashMap();
   map2['d']=4;
   map2['a']=1;
   map2['b']=2;
   map2['c']=3;
   map2['c']=5;

   map3=  HashMap();
   map3.putIfAbsent('a', () => 1);
   map3.putIfAbsent('b', () => 2);
   map3.putIfAbsent('c', () => 3);
   map3.putIfAbsent('d', () => 4);
   map3.putIfAbsent('c', () => 5);



  print(map);
  print(map2);
  print(map3);

  print('***************************');
  print(map.keys);
  print(map.values);
  print(map['d']);


}