import 'dart:io';

class vehicle{
 String? make;
 var year;
 var model;
 void displaydetails(){
  print(this.make);
  print(this.year);
  print(this.model);
 }
}
class bicycle extends vehicle{
  var numDoors;
  void displayDetails(){
    print(this.numDoors);
  }
}
class motorcycle extends vehicle{
  late bool  hasSidecar;
  void displayDetails(){
    print(hasSidecar);
  }
}


void main(){
var v=new vehicle();
v.make="toyota";
v.year=2001;
v.model="innova";
v.displaydetails();
var b=new bicycle();
b.numDoors=4;
b.displayDetails();
var m=new motorcycle();
m.hasSidecar=true;
m.displayDetails();
}