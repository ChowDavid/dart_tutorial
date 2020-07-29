
void main(List<String> args){
  var age=0;
  var dogyears=7;
  try {
    if (age==null) throw  NullThrownError();
    print(age * dogyears);
    print('ended');
  } on NoSuchMethodError{
    print('No Such Method Error');
  } on NullThrownError {
    print('Null pointer exception');
  } catch (e){
    print('Error ${e}');
  } finally {
    print('complete');
  }
  print('bye');
}