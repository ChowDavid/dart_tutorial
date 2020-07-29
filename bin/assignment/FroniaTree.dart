import 'dart:io';

void main() {
  var buildTreeLevel = getTreeLevel();

  print ('$buildTreeLevel');

  var printTreeLevel = '';
  var sideSpace='';

  if (buildTreeLevel==null){
    print('Wrong input');
  } else if (buildTreeLevel <= 0) {
    print('Invalid tree level');
  } else {
    for (var i = 1; i <= buildTreeLevel; i++) {
      var numStar = i * 2 - 1;
      printTreeLevel = '*' * numStar;
      sideSpace = ' ' * (buildTreeLevel - i);
      print('$sideSpace$printTreeLevel');
    }
    printTreeLevel = '*';
    sideSpace = ' ' * (buildTreeLevel - 1);
    print('$sideSpace$printTreeLevel');
  }

}

int getTreeLevel(){
  int treeLevel;
  do {
    stdout.write('How many levels of tree to order?  ');
    var input= stdin.readLineSync();
    if (!input.contains( RegExp(r'\D'),0)){
      treeLevel = int.parse(input);
    } else {
      print('Please enter positive integer....');
    }
  } while(treeLevel==null);
  return treeLevel;

}