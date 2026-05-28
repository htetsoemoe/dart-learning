void main(List<String> args) {
  int userid = 123;
  int userPin = 456;

  // Printing Info
  print((userid == 123) && (userPin == 456)); // print true
  print((userid == 1213) && (userPin == 456)); // print false.
  print((userid == 123) || (userPin == 456)); // print true.
  print((userid == 1213) || (userPin == 456)); // print true
  print((userid == 123) != (userPin == 456)); //print false
}