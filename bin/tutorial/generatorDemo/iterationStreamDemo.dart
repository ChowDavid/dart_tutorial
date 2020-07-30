import 'PrimeNumberStream.dart';

void main() {

  print('='*10);
  //use stream 
  var primeNumberStream = PrimeNumberStream();
  primeNumberStream.getPrime(min:10000,max:1000000)
  .where((event) => event>500000)
  .listen((event) {print(event);});
}
