import 'department.dart';

class Faculty {
  static int _idCounter = 0;

  Faculty() {
    facultyId = ++_idCounter;
  }

  late final int facultyId;
  late String name;
  late String qualification;
  late String email;
  late List<Department> departments;

  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}