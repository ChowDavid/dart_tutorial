
import 'dart:collection';

main(List<String> args){
  Set<String> aSet,bSet;
  aSet = new Set();
  bSet = new LinkedHashSet();

  //aSet.add(1);
  aSet.add('hello');
  aSet.add('Hello');

  bSet.add('apple');
  bSet.add('hello');
  bSet.add('orange');


  print(aSet);
  print(bSet);


  print(aSet.length);
  print(aSet.contains("apple"));
  print(aSet.containsAll(bSet));
  print(bSet.containsAll(aSet));
  print(aSet.difference(bSet));
  print(bSet.difference(aSet));
  print(aSet.union(bSet));
  print(aSet.intersection(bSet));



}