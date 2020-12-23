void main() {
  // instantiate the class.
  User userOne = User();

  // use the class.
  print(userOne.mileage);
  userOne.addMiles(12);
  print(userOne.mileage);

  // classes with constructors, yo
  Hobbit merry = Hobbit('Merry', 56);
  Hobbit pippin = Hobbit('Pippin', 50);

  merry.login();
  pippin.login();

  Ringbearer frodo = Ringbearer('Frodo', 56);
  // Ringbearer extends Hobbit, so Frodo has access to properties both on Hobbit and Ringbearer classes.
  print(frodo.mileage);
  print(frodo.hasRing);
}

// aye, it's simple class syntax. Nothing crazy.
class User {
  String username = "MeriadocBB";
  int mileage = 54;
  void login() => print(username + " Logged in.");
  void addMiles(int miles) => mileage += miles;
}

// but what if we want to use constructors? Well, we just do it w/o adding vals to the properties, and we add a constructor function.
class Hobbit {
  String name;
  int age;
  int mileage = 0;
  void login() => print(name + " Logged in.");
  void addMiles(int miles) => mileage += miles;

  // constructor function
  // whaddaya know. Looks like Dart also has the this keyword.
  Hobbit(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class Ringbearer extends Hobbit {
  // constructor for the Ringbearer calls constructor for the Hobbit.
  Ringbearer(String username, int age) : super(username, age);
  bool hasRing;
}
