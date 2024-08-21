import 'package:dart_application_1/enums/enums.dart';
import 'package:dart_application_1/models/AcademicManagement/course.dart';

class ClassSchedule {
  static int _idCounter = 0;

  ClassSchedule() {
    scheduleId = ++_idCounter;
  }

  late final int scheduleId;
  late Course courseId;
  late List<DayOfWeek> daysOfClass;
  late ClassLocation location;
  DateTime? startTime;
  DateTime? endTime;
}
