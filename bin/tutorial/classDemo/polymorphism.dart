//https://toastguyz.com/dart/dart-polymorphism

class Shape
{
  void drawShape()
  {
    print('Undefined Shape');
  }
}

class Triangle extends Shape
{
  @override
  void drawShape()
  {
    print('Triangle Shape');
  }
  void onlyMe(){
    print('Only Me from Triangle');
  }
}
class Square extends Shape
{
  @override
  void drawShape()
  {
    print('Square Shape');
  }
}
class Hexagon extends Shape
{
}
void main()
{
  // Upcasting
  var u =  Shape();
  Shape T= Triangle();
  Shape S= Square();
  Shape H= Hexagon();

  T.drawShape();
  S.drawShape();
  H.drawShape();
  u.drawShape();

  print('---------------');


  //Down Casting

  (T as Triangle).onlyMe();
  //T.onlyMe();


}