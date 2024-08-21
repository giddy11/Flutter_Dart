class ProgramOfStudy {
  static int _idCounter = 0;

  ProgramOfStudy() {
    programOfStudyId = ++_idCounter;
  }

  late final int programOfStudyId;
  String name = "";
  late String field;
  late int yearsOfStudy;
  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}