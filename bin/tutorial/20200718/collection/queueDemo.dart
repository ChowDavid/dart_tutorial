import 'dart:collection';

void main(List<String> args) {
  var q = Queue();
  q.add(1);
  q.add(2);
  q.add(3);
  q.add(4);
  q.removeLast();
  q.removeFirst();

  print(q);
}
