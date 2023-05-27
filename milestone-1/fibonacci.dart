import 'dart:io';

void main() {
  String s= stdin.readLineSync()!;
  int n=int.parse(s);

  int first = 0, second = 1;
  
  print("Fibonacci Series up to $n terms:");
  
  for (int i = 1; i <= n; i++) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}