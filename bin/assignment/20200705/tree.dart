import 'dart:io';

int calTotalStar(int i){
  return 2*(i-1)+1;
}

int calTotalSpace(int max,int totalStar){
  return ((max-totalStar)/2).floor();
}

String createLine(int totalSpace, int totalStar){
  var center = '*'*totalStar;
  var leftRight = ' '*totalSpace;
  return '${leftRight}${center}${leftRight}';
}

void main(List<String> args) {
  stdout.write('Please enter level of tree');
  var level = int.parse(stdin.readLineSync());
  var max = calTotalStar(level);
  for (var l=1;l<=level;l++){
    var totalStar = calTotalStar(l);
    print('${createLine(calTotalSpace(max, totalStar), totalStar)}');
  }
  for (var l=1;l<=2;l++){
    print('${createLine(calTotalSpace(max, 1), 1)}');
  }
}


