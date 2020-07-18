
main(List<String> args){
  int age=0;
  int dogyears=7;
  try {
    if (age==null) throw new NullThrownError();
    print(age * dogyears);
    print('ended');
  } on NoSuchMethodError{
    print('No Such Method Error');
  } on NullThrownError {
    print('Null pointer exception');
  } catch (e){
    print("Error ${e}");
  } finally {
    print('complete');
  }
  print('bye');
}