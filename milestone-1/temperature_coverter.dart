import 'dart:io';

void main() {
  print("Enter the temperature:");
  String input = stdin.readLineSync()!;
  double temp = double.parse(input);

  print("Choose conversion type:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  String choice = stdin.readLineSync()!;
  
  if (choice == "1") {
    double fahrenheit = (temp * 9/5) + 32;
    print("$temp Celsius is $fahrenheit F");
  } else if (choice == "2") {
    double celsius = (temp - 32) * 5/9;
    print("${temp+1} Fahrenheit is $celsius C");
  } else {
    print("Invalid choice");
  }
}