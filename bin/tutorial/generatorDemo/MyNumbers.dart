
class MyNumbers extends Iterable<int>{

  MyNumbers({this.numbers});

  final List<int> numbers;


  @override
  Iterator<int> get iterator => numbers.iterator;

}