//https://www.youtube.com/watch?v=TF-TBsgIErY
//Sync Generator

class MyIterator extends Iterator<int>{
  
  final _numbers = <int>[10,9,8,7,6,5,4,3,2,1];
  var _i=0;

  @override
  int get current{

    return _numbers[_i];
  }
  @override
  bool moveNext(){
    _i++;
    if (_i<_numbers.length){
      return true;
    } else {
      return false;
    }
  }

  
}