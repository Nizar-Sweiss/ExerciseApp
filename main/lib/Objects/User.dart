class User {
  String _name = "";
  String _password = "";
  static List <User>Users = [];
  
  User(String name, String password) {
    _name = name;
    _password = password;
    Users.add(this);
     print("$_name Added Successfully!");
  }
  String getName (){
  return _name ;
}
String getPasswprd(){
  return _password;
}
}
//ToDo Set Password and Name To make the user Change his info 
//ToDo Add PFP for the user 
//ToDo User can Delete his account(All Info )


