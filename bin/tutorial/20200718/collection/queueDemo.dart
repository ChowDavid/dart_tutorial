import 'dart:collection';

main(List<String> args){
  Queue q= new Queue();
  q.add(1);
  q.add(2);
  q.add(3);
  q.add(4);
  q.removeLast();
  q.removeFirst();

  print(q);


}