
main(List<String> args){

  //raw string
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
  var t = 'In a raw string, not even \n gets special treatment.';
  print(t);

  //... spread operator
  var list = [1,2,3];
  var list2 = [0,list];
  var list3 = [0, ...list];
  assert(list3.length == 4);

  //...? spread operator avoid null
  var list4;
  var list5 = [0, ...?list4];
  assert(list5.length ==1);

  //collection if
  var promoActive = true;
  var nav=[
    'Home',
    'Furniture',
    'Plants',
    if (promoActive) 'Outlet'
  ];
  print(nav);

  //collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfStrings[1] == '#1');







    //Lexical closures
    // Create a function that adds 2.
    var add2 = makeAdder(2);

    // Create a function that adds 4.
    var add4 = makeAdder(4);

    assert(add2(3) == 5);
    assert(add4(3) == 7);






    //Cascade notation

}



//Lexical closures
makeAdder(int addBy) {
  return (int i) => addBy + i;
}