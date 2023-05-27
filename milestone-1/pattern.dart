import 'dart:io';

void main(){
int n= int.parse(stdin.readLineSync()!);
for (int i=0;i<n;i++){ 
for(int j=0;j<n-i-1;j++){
  stdout.write(" ");
}
for(int k=0;k<(2*i)+1;k++){
  stdout.write("*");
}
print("");
}
int h=n-1;
for(int i=h;i>0;i--){
  for(int j=i;j<n;j++){
     stdout.write(" ");
  }
  for(int k=0;k<(2*i)-1;k++){
    stdout.write("*");
  }
  print("");
}
}
