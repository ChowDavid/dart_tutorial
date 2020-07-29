//https://toastguyz.com/dart/dart-polymorphism

class Shape
{
  drawShape()
  {
    print("Undefined Shape");
  }
}

class Triangle extends Shape
{
  drawShape()
  {
    print("Triangle Shape");
  }
  onlyMe(){
    print('Only Me from Triangle');
  }
}
class Square extends Shape
{
  drawShape()
  {
    print("Square Shape");
  }
}
class Hexagon extends Shape
{
}
void main()
{
  // Upcasting
  Shape u = new Shape();
  Shape T=new Triangle();
  Shape S=new Square();
  Shape H=new Hexagon();

  T.drawShape();
  S.drawShape();
  H.drawShape();
  u.drawShape();

  print('---------------');


  //Down Casting

  (T as Triangle).onlyMe();
  //T.onlyMe();


}