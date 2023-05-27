import 'dart:io';

void main(){
  String s=stdin.readLineSync()!;
  var a=s.split(' ');
  var m={};
  for(int i=0;i<a.length;i++){
   if(m.containsKey(a[i])){
    m[a[i]]++;
   }
   else {
    m[a[i]]=1;
   }
  }
  print(m);
}