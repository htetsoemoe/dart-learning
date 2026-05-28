void main(List<String> args) {
  String strVal = "1.1";
  print("Type of strVal is ${strVal.runtimeType}");

  double douVal = double.parse(strVal);
  print("Type of douVal is ${douVal.runtimeType}");
}