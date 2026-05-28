/*
    How to run file in Assert mode

    Use this command to run the dart file, which enables assert. If you don't use this, you will not be able to see the issue.
    You can use this command below if you are running a dart file from the computer.

    dart --enable-asserts file_name.dart 
*/

void main(List<String> args) {
  var age = 35;
//   assert(age != 35, "Age must be 35");
  assert(age == 35, "Age is 35");
}