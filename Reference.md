# Dart Reference

This reference introduces the basic Dart topics needed to start writing simple programs.

## Introduction to Dart

Dart is a modern programming language created by Google. It is commonly used to build mobile, web, desktop, and server applications. Dart is the main language used with Flutter, a popular framework for building cross-platform apps.

Important points about Dart:

- Dart is object-oriented.
- Dart has a clean and readable syntax.
- Dart supports both just-in-time and ahead-of-time compilation.
- Dart is strongly typed, but it can also infer types automatically.
- Dart programs usually start from a `main()` function.

Example:

```dart
void main() {
  print('Welcome to Dart');
}
```

## Install Dart

You can install Dart by installing the Dart SDK directly, or by installing Flutter, which already includes Dart.

### Check If Dart Is Installed

Open a terminal and run:

```bash
dart --version
```

If Dart is installed, you will see the installed Dart SDK version.

### Install Dart SDK

Visit the official Dart website:

```text
https://dart.dev/get-dart
```

Follow the instructions for your operating system.

After installation, run:

```bash
dart --version
```

### Run a Dart File

Create a file named `hello.dart`:

```dart
void main() {
  print('Hello, Dart!');
}
```

Run it with:

```bash
dart run hello.dart
```

You can also use:

```bash
dart hello.dart
```

## Basic Dart Program

A basic Dart program contains a `main()` function. Dart starts running code from this function.

```dart
void main() {
  print('Hello, World!');
}
```

Explanation:

- `void` means the function does not return a value.
- `main()` is the entry point of the program.
- `print()` displays output in the console.
- Statements usually end with a semicolon.

## Variables in Dart

Variables are used to store values.

```dart
void main() {
  String name = 'Aung';
  int age = 20;

  print(name);
  print(age);
}
```

### Using `var`

Dart can infer the type automatically.

```dart
void main() {
  var city = 'Yangon';
  var temperature = 32;

  print(city);
  print(temperature);
}
```

After Dart infers a type, the variable should keep that type.

### Using `dynamic`

`dynamic` allows a variable to hold different types of values.

```dart
void main() {
  dynamic value = 'Hello';
  print(value);

  value = 100;
  print(value);
}
```

Use `dynamic` carefully because it removes many type checks.

### Using `final` and `const`

Use `final` when a value is assigned once and cannot be changed.

```dart
void main() {
  final name = 'Dart';
  print(name);
}
```

Use `const` for compile-time constants.

```dart
void main() {
  const pi = 3.14159;
  print(pi);
}
```

## Data Types in Dart

Dart has several common built-in data types.

### `int`

Stores whole numbers.

```dart
int age = 25;
```

### `double`

Stores decimal numbers.

```dart
double price = 19.99;
```

### `num`

Stores either an integer or a decimal number.

```dart
num score = 95;
score = 95.5;
```

### `String`

Stores text.

```dart
String language = 'Dart';
```

### `bool`

Stores `true` or `false`.

```dart
bool isLearning = true;
```

### `List`

Stores multiple values in order.

```dart
List<String> fruits = ['apple', 'banana', 'orange'];
```

### `Map`

Stores key-value pairs.

```dart
Map<String, int> marks = {
  'English': 80,
  'Math': 90,
};
```

### `Set`

Stores unique values.

```dart
Set<int> numbers = {1, 2, 3, 3};
print(numbers);
```

## Comments in Dart

Comments are notes in code. Dart ignores comments when running the program.

### Single-Line Comment

```dart
void main() {
  // This prints a message
  print('Hello');
}
```

### Multi-Line Comment

```dart
void main() {
  /*
    This is a multi-line comment.
    It can cover more than one line.
  */
  print('Dart comments');
}
```

### Documentation Comment

Documentation comments are often used to describe classes, methods, and functions.

```dart
/// Adds two numbers and returns the result.
int add(int a, int b) {
  return a + b;
}
```

## Operators in Dart

Operators are symbols used to perform operations on values.

### Arithmetic Operators

```dart
void main() {
  int a = 10;
  int b = 3;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}
```

Common arithmetic operators:

- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `~/` integer division
- `%` remainder

### Assignment Operators

```dart
void main() {
  int number = 10;

  number += 5;
  number -= 2;

  print(number);
}
```

### Comparison Operators

```dart
void main() {
  int a = 10;
  int b = 20;

  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
}
```

### Logical Operators

```dart
void main() {
  bool hasEmail = true;
  bool hasPassword = true;

  print(hasEmail && hasPassword);
  print(hasEmail || hasPassword);
  print(!hasEmail);
}
```

Logical operators:

- `&&` and
- `||` or
- `!` not

### Increment and Decrement Operators

```dart
void main() {
  int count = 1;

  count++;
  print(count);

  count--;
  print(count);
}
```

## User Input in Dart

To read user input from the console, import `dart:io` and use `stdin.readLineSync()`.

```dart
import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  print('Hello, $name');
}
```

`stdin.readLineSync()` returns a nullable `String?` because the input could be empty or unavailable.

### Reading Numbers

Console input is read as text, so convert it when you need a number.

```dart
import 'dart:io';

void main() {
  stdout.write('Enter your age: ');
  String? input = stdin.readLineSync();

  int age = int.parse(input!);
  print('You are $age years old.');
}
```

Safer number conversion:

```dart
import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print('Invalid number');
  } else {
    print('Your number is $number');
  }
}
```

## String in Dart

A `String` stores text. Strings can use single quotes or double quotes.

```dart
void main() {
  String firstName = 'Mg';
  String lastName = "Aung";

  print(firstName);
  print(lastName);
}
```

### String Interpolation

String interpolation inserts variables or expressions into a string.

```dart
void main() {
  String name = 'Dart';
  int year = 2011;

  print('$name was announced in $year.');
  print('Next year is ${year + 1}.');
}
```

### String Concatenation

```dart
void main() {
  String firstName = 'Mg';
  String lastName = 'Aung';

  String fullName = firstName + ' ' + lastName;
  print(fullName);
}
```

### Multi-Line String

```dart
void main() {
  String message = '''
This is a multi-line string.
It can contain more than one line.
''';

  print(message);
}
```

### String Properties

String properties give information about a string.

```dart
void main() {
  String text = 'Dart';
  String emptyText = '';

  print(text.codeUnits);
  print(emptyText.isEmpty);
  print(text.isNotEmpty);
  print(text.length);
}
```

Common string properties:

- `codeUnits` returns the UTF-16 code units of the string.
- `isEmpty` returns `true` if the string has no characters.
- `isNotEmpty` returns `true` if the string has one or more characters.
- `length` returns the number of UTF-16 code units in the string.

### Common String Properties and Methods

```dart
void main() {
  String text = ' Dart Programming ';

  print(text.length);
  print(text.toUpperCase());
  print(text.toLowerCase());
  print(text.trim());
  print(text.contains('Dart'));
  print(text.replaceAll('Dart', 'Flutter'));
}
```

## Practice Program

```dart
import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  if (age == null) {
    print('Invalid age');
  } else {
    print('Hello, $name. You are $age years old.');
  }
}
```
