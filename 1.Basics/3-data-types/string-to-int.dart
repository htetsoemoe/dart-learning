void main(List<String> args) {
  String strVal = "1";
  print("Type of strVal is ${strVal.runtimeType}");

  // convert String to Int
  int intVal = int.parse(strVal);
  print("Type of intVal is ${intVal.runtimeType}");
}