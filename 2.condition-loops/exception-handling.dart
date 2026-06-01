import 'dart:math';
import 'dart:io';

// Custom exception class
class NegativeSquareRootException implements Exception {
  @override
  String toString() {
    return 'Square root of negative number is not allowed here.';
  }
}

// Get square root of a positive number
num squareRoot(int i) {
  if (i < 0) {
    throw NegativeSquareRootException();
  } else {
    return sqrt(i);
  }
}

void main(List<String> args) {
  try {
    print("Enter a number:");
    String? input = stdin.readLineSync();
    int? inputNum = int.tryParse(input ?? '');

     if (inputNum == null) {
      throw FormatException('Invalid integer input');
    }

    var result = squareRoot(inputNum);
    print("Square root of $inputNum: $result");
    
  } on NegativeSquareRootException catch (e) {
    print("Oops! Negative Number: $e");
  } catch (e) {
    print(e);
  } finally {
    print("Job Completed!");
  }
}