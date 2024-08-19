class User {
  User(this.userId) {
    userId += 1;
  }

  int userId;
  String userName="";
  String password="";
  String email="";
  String phoneNumber="";
  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();

  
}