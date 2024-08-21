import 'package:dart_application_1/models/FacultyManagement/faculty.dart';

class Department {
  static int _idCounter = 0;

  Department() {
    departmentId = ++_idCounter;
  }

  late final int departmentId;
  late String name;
  late Faculty facultyId;

  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}
