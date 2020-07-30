import 'dart:async';

class PrimeNumberStream {

  Stream<int> getPrime({int min, int max}) async* {
    var maxReach = max / 2.ceil();
    int product;
    for (var i = (min < 2 ? 2 : min); i <= max; i++) {
      var prime = true;
      for (var n = 2; n <= maxReach; n++) {
        for (var m = 2; m < maxReach; m++) {
          product = m * n;
          if (product < min) break;
          if (product > i) break;
          if (product == i) {
            prime = false;
            break;
          }
        }
        if (!prime) {
          break;
        }
      }
      if (prime) {
        yield await Future.value(i);

      }
    }
  }
}
