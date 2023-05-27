import 'dart:io';

class circle{
   var radius;
   double getarea(var r){
       var area=3.14*r*r;
       return area;
   }
    double circumference(var r){
       var perimeter=2*3.14*r;
       return perimeter;
   }
  
}

void main(){
   var obj=new circle();
   int r=int.parse(stdin.readLineSync()!);
   print(obj.getarea(r));
   print(obj.circumference(r));
}