import 'package:dart_application_1/models/AcedemicManagement/course.dart';

class Instructor {
  static int _idCounter = 0;

  Instructor() {
    instructorId = ++_idCounter;
  }

  late final int instructorId;
  String name = "";
  String phoneNumber = "";
  late List<Course> courses;

  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}