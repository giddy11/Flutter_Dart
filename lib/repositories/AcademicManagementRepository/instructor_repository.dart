import 'package:dart_application_1/models/AcademicManagement/instructor.dart';

class InstructorRepository {
  static List<Instructor> instructors = [];

  static void create(Instructor instructor){
    instructors.add(instructor);
  }

  // TODO: check for null
  static Instructor? getById(int instructorId){
    return instructors.firstWhere((ins) => ins.instructorId == instructorId);
  }

  static void update(Instructor instructor){
    var existingInstructor = instructors.firstWhere((ins) => ins.instructorId==instructor.instructorId);
    existingInstructor.name = instructor.name;
    existingInstructor.phoneNumber = instructor.phoneNumber;
    existingInstructor.courses = instructor.courses;
    existingInstructor.dateUpdated = instructor.dateUpdated;
  }

  static bool delete(int instructorId) {
    int initialLength = instructors.length;
    
    instructors.removeWhere(
      (instructor) => instructor.instructorId == instructorId,
    );

    return instructors.length < initialLength; // Returns true if an instructor was removed
  }


}