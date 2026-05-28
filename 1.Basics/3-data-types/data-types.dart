/*


  Number            int, double, num          It represents numeric values

  Strings           String                    It represents a sequence of characters

  Booleans          bool                      It represents Boolean values true and false

  Lists             List                      It is an ordered group of items

  Maps              Map                       It represents a set of values as key-value pairs

  Sets              Set                       It is an unordered list of unique values of same types

  Runes             runes                     It represents Unicode values of String

  Null              null                      It represents null value


*/

void main(List<String> args) {
  // Declaring Variables
  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;

  // For Sum
  num sum = num1 + num2 + num3 + num4;

  // Printing Info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

  // Declaring Variables
  double price = 1130.2232323233233; // valid.
  print(price.toStringAsFixed(2));

  // Declaring Values
  String schoolName = "Diamond School";
  String address = "New York 2140";

  // Printing Values
  print("School name is $schoolName and address is $address");

  // Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

  // Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

  // Printing Information
  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

}
