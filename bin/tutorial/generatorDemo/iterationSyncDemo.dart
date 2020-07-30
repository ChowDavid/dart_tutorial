import 'MyIterator.dart';
import 'MyNumbers.dart';
import 'PrimeNumber.dart';
import 'PrimeNumberStream.dart';

void main() {
  var numbers = <int>[1, 3, 5, 7, 9, 11];

  var itNumbers = numbers.iterator;
  while (itNumbers.moveNext()) {
    print(itNumbers.current);
    print(itNumbers.current);
    print(itNumbers.current);
  }

  print('-' * 10);
  var myNumber = MyIterator();
  while (myNumber.moveNext()) {
    print(myNumber.current);
  }

  print('-' * 10);
  //MyNumbers is a iterable of number
  var myNumbers = MyNumbers(numbers: numbers);
  var myNumbersIterator = myNumbers.iterator;
  //loop the iterator
  while (myNumbersIterator.moveNext()) {
    print(myNumbersIterator.current);
  }
  //loop the iterable
  for (final num in myNumbers) {
    print(num);
  }

  print('*' * 10);
  //use generator
  var primeNumber = PrimeNumber();
  final primes = primeNumber.getPrime(min: 10000, max: 10100);
  print(primes.length);
  print(primes);

}
