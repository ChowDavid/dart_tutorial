
void main(List<String> args){

  print(test4());


  print(area(length: 10, width: 100));
  print(area2(width: 10));

  //anonymous function
  var numbers=[65,34,8,2,99,0,-100,100];
  var aNewNumbers = numbers.where((element) => element>=0);



  print(numbers);
  print(aNewNumbers);

  var foo =  Foo();

  foo.bar();
  foo.barString('name');
  foo.barNumber(123);

}


//no input, no output
void test(){
  print('test');
}

//one input
void test2(String name){
  print(name);
}

//return value
int test3(String name){
  return name.length;
}

// optional
int test4([String name = 'Default']){
  return test3(name);
}

//Named parameter
int area({int width, int length}){
  return width * length;
}


//named parameter optional
int area2({int width, int length = 5}){
  return width * length;
}


class Foo {
  void bar()=>print('bar');
  void barString(String name) => print('bar ${name}');
  //void barNumber(int number) => print('bar ${number}');
  void barNumber(int number){
    print('bar ${number}');
  }
}

