abstract class Shape{
 double area();

}


class Rectangle extends Shape {
  late double width;
  late double height;


  @override
  double area() {
    return width * height;
  }
}
class circle extends Shape{
  late double r;
  @override
  double area() {
    return 3.14*r*r;
  }

}



void main(){
var c=new circle();
c.r=1;
print(c.area());
var re=new Rectangle();
re.width=2;
re.height=3;
re.area();
  print(re.area());
}