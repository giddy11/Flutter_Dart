void practice1() {
  // more than one return type
  (int, String) printText() {
    return (3, "hello");
  }

  ({int age, String text}) printTex2t() {
    return (age:3, text:"hello");
  }

  dynamic res = printText();

  print(res.$2);

  //OR
  var (age, text) = printText();
  print(age);

  //OR
  (int, String) value = printText();

  //OR
  final stuff = printTex2t();
  print(stuff.age);
  print(stuff.text);
}

void practiceFunctions() {
  // Scenerio 4 - Methods with Optional Paramters

  void signUp(String email, String password,
      [String fullname = 'No name',
      String phoneNumber = '+234',
      String gender = 'Male']) {
    print('Sign up successful');
  }

// Scenerio 3&4b - Another pattern for overload
  void signUpTwo(
      {String email = '',
      String password = '',
      String fullname = 'No name',
      String phoneNumber = '+234',
      String gender = 'Male'}) {
    print('Sign up successful');
  }

// Scenerio 3&4c - Another pattern for overload
  void signUpThree(String email,
      {String password = '',
      String fullname = 'No name',
      String phoneNumber = '+234',
      String gender = 'Male'}) {
    print('Sign up successful');
  }

// Scenerio 3&4d - Another pattern for overload
  void signUpFour(String email,
      {required String password,
      String? fullname,
      String phoneNumber = '+234',
      String gender = 'Male'}) {
    print('Sign up successful');
  }

  //Annonymous functions
  String annon() => "hello";
}


void practiceClasses(){
  // Cookie cookie = Cookie("rectangle", 45.4);
  Cookie cookie = Cookie(shape:"rectangle", size:45.4);

  String shape = cookie.setShape("circle");

  print(cookie.shape);
  print(shape);

  cookie.baking();
  cookie._height = 10;
  cookie.setWidth = 40;

  print(cookie.width);
  
}

class Cookie {

  // Cookie(String shape, double size){
  //   shape = shape;
  //   size = size;
  // }

  // Cookie(this.shape, this.size){
  //   baking();
  // }

  Cookie({required this.shape, required this.size}){
    baking();
  }

  // Cookie(this.shape, this.size);

  void baking(){
    print("Your cookie which is of the shape $shape and size $size cm is baking");
  }

  bool isCooling(){
    return false;
  }

  String setShape(String shape){
    shape = shape;
    return shape;
  }

  void modifyHeight(int h){
    _height = h;
  }

  // String shape;
  // double size;
  final String shape;
  final double size;
  int _height = 4;
  int _width = 5;

  // Getters
  int get width => _width;

  // Setters
  set setWidth(int w){
    _width = w;
  }
}

void practiceStaticClass(){
  print(Constants.greeting);
  print(Constants.giveMeSomeValue());
}

class Constants {

  // static functions
  static int giveMeSomeValue(){
    return 10;
  }

  // static variables
  static String greeting = "Hello, how are you?";
  static String bye = "Bye!";
}

void practiceInheritance(){
  Car car = Car();
  Vehicle car2 = Car();

  car.printSomething();
  print((car2 as Car).noOfWheels);
}

class Vehicle {

  void accelerate(){
    speed+=10;
  }

  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;
}

class Car extends Vehicle {

  void printSomething(){
    print(noOfWheels);
  }

  int noOfWheels = 4;

}

