
import 'dart:convert';

void practiceRecord(){
  /**
   * Records: they are immutable
   * we also have equality records: they have to have the same arguments
   * In summary, records are real values. you can store them in variables,
   * pass them to and from functions and store them in lists.
   */
  final records = (4.5, greetings: 'HI', isAdult: true, 3);
  // print(records);

  (double, int)? name = (4.5, 3);
  // print(name);
  name = null;
  // print(name);

  ({int x, int y, int z}) point = (x:1, y:2, z:3);
  ({int a, int y, int z}) color = (a:1, y:2, z:3);

  // point = color; //nah

  final list = [1,2,3,4,5,6,7,8];
  // final [a,b,c, ...] = list;
  // final [a,b,c, ...d] = list;
  final [a,_,c, ...d] = list;
  // print("$a $b $c $d");
  // print("$a $c $d");

  final jsoned = {
    "userId": 1,
    "id": 1,
    "title": "title is good",
    "body": "this is a body"
  };

  // print(jsoned["userId"]);

  //the below could be error prone. so u use if statement
  // final {"userId": String userId, "title": String title} = jsoned;
  // print(userId);
  // print(title);

  // if(jsoned case {"userId": int userId, "title": String title, "body": String body}){
  //   print(userId);
  //   print(title); 
  //   print(body); 
  // } else{
  //   print("Incorrect JSON");
  // }

  switch(jsoned){
    case {"userId": int userId, "title": String title, "body": String body}:
      print(userId);
      print(title);
      print(body);
      break;

    default:
      print("Incorrect JSON");
  }
}

void patternMatching(){
  final human = Human("Nice Name", 3);

  final Human(name:name, age:age) = human;

  // print(name);

  List<String> listItems = ["Hi", "MAN"];

  int index = 2;

  switch (listItems) {
    case ["Hi" || "Hi", "MAN"] when index == 2:
      print("dude");
      break;
    default:
  }

  int page = 0;
  int lastPage = 1;

  final text = switch(page) {
    0 => "Click Here",
    1 when page == lastPage => "Click Me",
    _ => "None",
  };

  print(text);

  String motivation = "this is a good world";
  motivation = motivation[0].toUpperCase() + motivation.substring(1);

  print(motivation);
}

class Human {
  Human(this.name, this.age);

  final String name;
  final int age;
}


void extensions(){
  String motivation = "this is a good world";
  // motivation = motivation[0].toUpperCase() + motivation.substring(1);
  motivation = motivation.capitalizeFirstLetter();

  print(motivation);
}

extension CapitalizeFirstLetter on String {
  String capitalizeFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }
}