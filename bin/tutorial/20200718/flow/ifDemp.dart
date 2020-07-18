main(List<String> args){

  var name='david';
  var age=16;

  if (name=='david'){
    print('branch1');
    var age=14;
    print(age);
  } else if (name=='chow') {
    print('branch2');
    bool good=true;
    age=18;
  } else {
    print('branch3');
    age=99;
  }

  print(age);
  //print(good);


}