import 'dart:io';

int calTotalStar(int i){
  return 2*(i-1)+1;
}

int calTotalSpace(int max,int totalStar){
  return ((max-totalStar)/2).floor();
}

String createLine(int totalSpace, int totalStar){
  String center = "".padLeft(totalStar,"*");
  String left = "".padLeft(totalSpace);
  String right = "".padLeft(totalSpace);
  return "${left}${center}${right}";
}

void main(List<String> args) {
  stdout.write("Please enter level of tree");
  int level = int.parse(stdin.readLineSync());
  int max = calTotalStar(level);
  for (int l=1;l<=level;l++){
    int totalStar = calTotalStar(l);
    print("${createLine(calTotalSpace(max, totalStar), totalStar)}");
  }
  for (int l=1;l<=2;l++){
    print("${createLine(calTotalSpace(max, 1), 1)}");
  }
}


