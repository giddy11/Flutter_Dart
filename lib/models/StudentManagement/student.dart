import 'package:dart_application_1/enums/enums.dart';
import 'package:dart_application_1/models/AcademicManagement/program_study.dart';

class Student {
  static int _idCounter = 0;

  Student() {
    studentId = ++_idCounter;
  }

  late final int studentId;
  late String name;
  late DateTime dateOfBirth;
  late Gender gender;
  late String address;
  late String email;
  late String phoneNumber;
  late ProgramOfStudy programOfStudyId;
  late DateTime enrollmentDate;
  late DateTime graduationDate;
}
