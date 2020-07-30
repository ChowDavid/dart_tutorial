
import 'PrimeNumber.dart';


void main() {


  print('*' * 10);
  //use generator
  var primeNumber = PrimeNumber();
  final primes = primeNumber.getPrime(min: 10000, max: 10100);
  print(primes.length);
  print(primes);

}
