// you need void main on every file. IDK why.
void main() {
  // variable declaration: type | name | assignment | semicolon.
  int age = 111;
  String name = "Bilbo Baggins";
  bool isWellPreserved = true;

  // Dart is strongly typed. A variable declared with one type cannot be retyped later...
  // uncomment to break code
  // age = "Eleventy One";

  // ...Unless it isn't, on purpose.
  dynamic dynamicAge = 111;
  dynamicAge = "Eleventy-One";

  // Array syntax
  List hobbits = ["Frodo", "Sam", "Pip", "Merry"];
}
