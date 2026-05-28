/*
  Properties of String

  codeUnits: Returns an unmodifiable list of the UTF-16 code units of this string.
  isEmpty: Returns true if this string is empty.
  isNotEmpty: Returns false if this string is empty.
  length: Returns the length of the string including space, tab, and newline characters.



  Method of String

  toLowerCase(): Converts all characters in this string to lowercase.
  toUpperCase(): Converts all characters in this string to uppercase.
  trim(): Returns the string without any leading and trailing whitespace.
  compareTo(): Compares this object to another.
  replaceAll(): Replaces all substrings that match the specified pattern with a given value.
  split(): Splits the string at matches of the specified delimiter and returns a list of substrings.
  toString(): Returns a string representation of this object.
  substring(): Returns the text from any position you want.
  codeUnitAt(): Returns the 16-bit UTF-16 code unit at the given index.

*/

void main(List<String> args) {
  String address1 = " USA"; // Contain space at leading.
  String address2 = "Japan  "; // Contain space at trailing.
  String address3 = "New Delhi"; // Contains space at middle.

  print("Result of address1 trim is ${address1.trim()}");
  print("Result of address2 trim is ${address2.trim()}");
  print("Result of address3 trim is ${address3.trim()}");
  print("Result of address1 trimLeft is ${address1.trimLeft()}");
  print("Result of address2 trimRight is ${address2.trimRight()}");


  String item1 = "Apple";
  String item2 = "Ant";
  String item3 = "Basket";

  print("Comparing item 1 with item 2: ${item1.compareTo(item2)}");
  print("Comparing item 1 with item 3: ${item1.compareTo(item3)}");
  print("Comparing item 3 with item 2: ${item3.compareTo(item2)}");


  String text =
      "I am a good boy I like milk. Doctor says milk is good for health.";

  String newText = text.replaceAll("milk", "water");

  print("Original Text: $text");
  print("Replaced Text: $newText");


  String allNames = "Ram, Hari, Shyam, Gopal";

  List<String> listNames = allNames.split(",");
  print("Value of listName is $listNames");

  print("List name at 0 index ${listNames[0]}");
  print("List name at 1 index ${listNames[1]}");
  print("List name at 2 index ${listNames[2]}");
  print("List name at 3 index ${listNames[3]}");


  int number = 20;
  String result = number.toString();

  print("Type of number is ${number.runtimeType}");
  print("Type of result is ${result.runtimeType}");  


  String textSubString = "I love computer";
  print(
    "Print only computer: ${textSubString.substring(7)}",
  ); // from index 6 to the last index
  print(
    "Print only love: ${textSubString.substring(2, 6)}",
  ); // from index 2 to the 6th index


  String textCapital = "hello world";
  print(
    "Capitalized first letter of String: ${textCapital[0].toUpperCase()}${textCapital.substring(1)}",
  );
}
