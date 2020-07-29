

void main(List<String> args){
  var minNum =2;
  var maxNUm=9999;
  var start = DateTime.now().millisecondsSinceEpoch;
  var primes = primeBetween(min:minNum,max:maxNUm);
  var lastfor = DateTime.now().millisecondsSinceEpoch-start;
  print('Numbe between $minNum and $maxNUm has ${primes.length} primes numbers, told $lastfor ms');
  print(primes);
}

List<int> primeBetween({int min, int max}){
  var primeNumbers = <int>[];
  var maxReach = max/2.ceil();
  int product;
  for (var i=(min<2?2:min); i<=max;i++){
    var prime=true;
    for (var n=2;n<=maxReach;n++){
      for (var m=2;m<maxReach;m++) {
        product = m*n;
        if (product<min) break;
        if (product>i)break;
        if (product == i) {
          prime = false;
          break;
        }
      }
      if (!prime){
        break;
      }
    }
    if (prime){
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}