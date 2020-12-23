// main function, required in any Dart executable.
// void means the function will return a whole lot of nothing.
void main() {
  // print is a function call.

  // uncomment to break code;
  // return "Bilbo";
  greet("Bilbo Baggins");
  print(wellPreserved(59));
  print(wellPreserved(111));
}

// 1. Notice hoisting is true here too; the function declarations must be similarly hoisted as in JS.
// 2. This function is typed to return a string.
String greet(name) {
  return 'Hello, ' + name;
}

// Arrow functions exist in dart.
int getAge() => 111;

// whaddaya know. Turnary operators also work in Dart. 
// it's almost like they based it on JS 
bool wellPreserved(int age) => age > 100 ? true : false;
