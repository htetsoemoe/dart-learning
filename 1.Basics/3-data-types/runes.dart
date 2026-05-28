/*
  Runes

  With runes, you can find Unicode values of String. The Unicode value of a is 97, so runes give 97 as output.
*/

void main(List<String> args) {
  String capitalValue = "A";
  String lowerValue = "a";
  
  print("Rune of A: ${capitalValue.runes}");
  print("Rune of a: ${lowerValue.runes}");
}