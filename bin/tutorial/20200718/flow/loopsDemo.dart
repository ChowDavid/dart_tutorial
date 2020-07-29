void main(List<String> args) {
  var names = ['David', 'Patrick', 'Ken'];
  print('!!!!!!!!!!!!!!!!!!!!!');
  var i = 0;
  do {
    print(names[i]);
    i = i + 1;
  } while (i < names.length);

  print('@@@@@@@@@@@@@@@@@@@@@');
  var j = 0;
  i = 0;
  while (j < names.length) {
    print(names[j]);
    //print(names[++i]); //i=i+1, names[1]
    //print(names[k++]);// names[0], k=k+1

    ++j;
  }

  print('-' * 20);
  for (var name in names) {
    print(name);
  }

  print('*' * 20);
  for (var index = 0; index < names.length; index++) {
    print(names[index]);
  }

  print('=' * 20);
  names.forEach((element) {
    print(element);
  });

  //sorting
  var numbers = [65, 34, 8, 2, 99, 0, -100, 100];
  print(numbers);
  //numbers.sort();
  numbers.sort((a, b) => a.compareTo(b));
  print(numbers);
  numbers.sort((a, b) => b.compareTo(a));
  print(numbers);

  print('^' * 20);
  //try our best
  for (var i = 0; i < numbers.length; i++) {
    for (var j = 0; j < numbers.length; j++) {
      if (i == j) continue;
      if (numbers[i] < numbers[j]) {
        var temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print(numbers);
}
