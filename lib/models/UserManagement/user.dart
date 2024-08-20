class User {
  static int _idCounter = 0;

  User() {
    userId = ++_idCounter;
  }

  late final int userId;
  String password = "";
  String email = "";
  String phoneNumber = "";
  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}