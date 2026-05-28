import 'dart:io';

void main(List<String> args) {
  print("Enter name");
  String? name = stdin.readLineSync();

  print("Enter age");
  String? age = stdin.readLineSync();
  int? number = int.tryParse(age ?? '');

  if (number == null) {
    print('Invalid number');
  } 

  print("Enter points in float");
  String? points = stdin.readLineSync();
  double? doubleVal = double.tryParse(points ?? '');

  if (doubleVal == null) {
    print("Invalid double");
  } 

  print("Name: ${name}");
  print("Age: ${age}");
  print("Points: ${points}");
}