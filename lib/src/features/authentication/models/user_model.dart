class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  UserModel({
    required this.fullName,
    required this.phoneNo,
    required this.password,
    this.id,
    required this.email,
  });
  toJson() {
    return {
      "Full Name": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}
