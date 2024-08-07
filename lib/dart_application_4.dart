import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void practice() {
  //list
  // List<Student> students = [
  //   Student("Rivan", 12),
  //   Student("Naman", 21),
  //   Student("Rakesh", 30),
  //   Student("Sonal", 25),
  // ];

  // List<Student> filteredStudents = [];

  // for(int i=0; i<students.length; i++){
  //   if(students[i].grade >= 20){
  //     filteredStudents.add(students[i]);
  //   }
  // }

  // for (final student in students) {
  //     if(student.grade >= 20){
  //       filteredStudents.add(student);
  //     }
  // }

  // final filteredStudents1 = students.where((student) => student.grade >= 20);

  // students = students.where((student) => student.grade >= 20).toList();

  // print(studentKs);

  // Set<Student> students2 = {
  //   Student("Rivan", 12),
  //   Student("Naman", 21),
  //   Student("Rakesh", 30),
  //   Student("Sonal", 25),
  //   Student("Sonal", 25),
  // };

  // print(students2);
}

// class Student<T> {
//   Student(this.name, this.grade);

//   @override
//   String toString() {
//     // TODO: implement toString
//     return "Student: $name";
//   }

//   final T name;
//   final T grade;
//   // @override
//   // String toString() => "Student: $name";
// }

void practiceMap() {
  //map
  Map<int, String> marks = {
    10: "10",
    20: "15",
    30: "30",
  };

  for (int i = 0; i < marks.length; i++) {
    // print(marks.keys.toList()[i]);
    // print(marks.keys);
    // print("${marks.keys.toList()[i]} : ${marks.values.toList()[i]}");
  }

  marks.forEach((key, value) {
    // print("$key : $value");
  });

  Map<String, int> marksUserA = {
    "Math": 20,
    "English": 60,
    "CS": 40,
  };

  Map<String, int> marksUserB = {
    "Math": 30,
    "English": 50,
    "CS": 70,
  };

  List<Map<String, int>> studentScores = [
    marksUserA,
    marksUserB,
    {
      "Math": 50,
      "English": 70,
      "CS": 50,
    },
  ];

  // studentScores.map((e) {
  //   print(e);
  // }).toList();

  studentScores.map((e) {
    e.forEach((key, value) {
      // print("$key : $value");
    });
  }).toList();
}

class Student<T> {
  Student(this.name, this.grade);

  @override
  String toString() {
    // TODO: implement toString
    return "Student: $name";
  }

  final T name;
  final T grade;
  // @override
  // String toString() => "Student: $name";
}

void practiceEnum() {
  // enums
  // final emp1 = Employee("rita", EmployeeType.swe);
  // emp1.fn2();
}

// class Employee {
//   Employee(this.name, this.type);

//   void fn(){
//     switch (type) {
//       case EmployeeType.swe:
//         print("Software engineer");
//         break;
//       case EmployeeType.finance:
//         print("Finance");
//         break;
//       case EmployeeType.marketing:
//         print("Marketing");
//         break;
//       default:
//     }
//   }

//   void fn2(){
//     print(type.salary);
//   }

//   final String name;
//   final EmployeeType type;
// }

// enum EmployeeType {
//   // swe,
//   // finance,
//   // marketing

//   swe(200000),
//   finance(250000),
//   marketing(100233);

//   final int salary;
//   const EmployeeType(this.salary);
// }

void practiceException() async {
//   print(10~/3);

//   try {
//   print(10~/0);
// } on Exception catch (e) {
//   print(e);
// } finally {
//   print("finnally here error");
// }

//   print("giddy");

  //futures (promises)
  // print("okay before await");
  // final res = await giveResultAfter2Sec();
  // print(res);

  //futures (promises)
  // print("okay before await");
  // giveResultAfter2Sec().then((val) {
  //   print(val);
  // });

  // print("hello");
  // print("Greetings!");
}

// Future<String> giveResultAfter2Sec() async {
//   return "Hey!!!";
// }

// Future<String> giveResultAfter2Sec() {
//   return Future(() {
//     return "Hey!!!";
//   });
// }

Future<String> giveResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 4), () async {
    return "Hey!!!!!!";
  });
}

void futurePractice() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');

  try {
    final res = await http.get(url);
    print(jsonDecode(res.body)["name"]);
  } catch (e) {
    // TODO
    print("Error $e");
  }
}

void futurePractice2() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');

  http.get(url).then((onValue) {
    print(jsonDecode(onValue.body)['name']);
  }).catchError((onError) {
    print("Error: $onError");
  });
}


void streamsPractice () async {
  /**
   * Streams: it is an async generator that helps to produce a sequence of values over time
   */
  // print(await countDown().first);

  // countDown().listen((onData) {
  //   print(onData);
  // }, onDone: () {
  //   print("Hey am done!!!");
  // });

  countDown2();
}

// Stream<int> countDown() async* {
//   for(int i=5; i>0; i--){
//     yield i;
//     await Future.delayed(Duration(seconds: 4));
//   }
// }

// Stream<int> countDown() {
//   return Stream.periodic(Duration(seconds: 1), (val) {
//     return val;
//   });
// }

// Stream<int> countDown() {
//   final controller = StreamController<int>();
//   controller.sink.add(1);

//   controller.stream.listen((onData) {
//     print(onData);
//   });
// }

void countDown2() {
  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();
  controller.sink.addError("hey error!!!");


  controller.stream.listen((onData) {
    print(onData);
  }, onError: (err) {
    print(err);
  });

  controller.close();
}