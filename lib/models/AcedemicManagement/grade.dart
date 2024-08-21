import 'package:dart_application_1/models/AcedemicManagement/course.dart';
import 'package:dart_application_1/models/StudentManagement/student.dart';

class Grade {
  static int _idCounter = 0;

  Grade() {
    gradeId = ++_idCounter;
  }

  late final int gradeId;
  late Course courseId;
  late Grade grade;
  late Student studentId;
  DateTime dateRecorded = DateTime.now();
}