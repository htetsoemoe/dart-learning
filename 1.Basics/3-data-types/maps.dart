/*
  Maps

  In Dart, a map is an object where you can store data in key-value pairs. Each key occurs only once, but you can use same value multiple times.
*/

void main(List<String> args) {
  Map<String, String> person = {
    'name': 'John',
    'address': 'Mars',
    'age': '35'
  };

  print("Name: ${person["name"]}");
}