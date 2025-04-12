class UserModel {
  String? userId;
  String? userName;
  String? userEmail;
  int? userContact;
  String? userPassword;
  String? userAge;
  String? userBloodGroup;
  String? userCity;
  String? userHospital;

  UserModel({
    this.userId,
    this.userName,
    this.userEmail,
    this.userContact,
    this.userPassword,
    this.userAge,
    this.userBloodGroup,
    this.userCity,
    this.userHospital,
  });

  // Factory constructor for creating UserModel from JSON
  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['id'];
    userName = json['name'];
    userEmail = json['email'];
    userContact = json['contact'];
    userPassword = json['password'];
    userAge = json['age'];
    userBloodGroup = json['bloodGroup'];
    userCity = json['city'];
    userHospital = json['hospital'];
  }

  // Method to convert UserModel to JSON
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.userId;
    data['name'] = this.userName;
    data['email'] = this.userEmail;
    data['contact'] = this.userContact;
    data['password'] = this.userPassword;
    data['age'] = this.userAge;
    data['bloodGroup'] = this.userBloodGroup;
    data['city'] = this.userCity;
    data['hospital'] = this.userHospital;
    return data;
  }
}
