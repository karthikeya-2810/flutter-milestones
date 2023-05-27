import 'dart:io';

void main(){
  String a=stdin.readLineSync()!;
  String b=stdin.readLineSync()!;
  List<String> c=a.split('');
  List<String> d=a.split('');
   c.sort();
   d.sort();
   if(c.length!=d.length){
    print("not anagrams");
   }
   else{
    for(int i=0;i<c.length;i++){
      if(c[i]!=d[i]){
        print("not anagrams");
        break;
      }
    }
    print("anagrams");
   }
  
}