class RequestModel {
  String? requesterId;
  String? requesterName;
  String? requesterEmail;
  int? requesterContact;
  int? requesterAge;
  String? requesterBloodGroup;
  String? requesterCity;
  String? requesterHospitalName;

  RequestModel({
    this.requesterId,
    this.requesterName,
    this.requesterEmail,
    this.requesterContact,
    this.requesterAge,
    this.requesterBloodGroup,
    this.requesterCity,
    this.requesterHospitalName,
  });

  RequestModel.fromJson(Map<String, dynamic> json) {
    requesterId = json['Id'];
    requesterName = json['Name'];
    requesterEmail = json['Email'];
    requesterContact = json['Contact'];
    requesterAge = json['Age'];
    requesterBloodGroup = json['BloodGroup'];
    requesterCity = json['City'];
    requesterHospitalName = json['HospitalName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.requesterId;
    data['Name'] = this.requesterName;
    data['Email'] = this.requesterEmail;
    data['Contact'] = this.requesterContact;
    data['Age'] = this.requesterAge;
    data['BloodGroup'] = this.requesterBloodGroup;
    data['City'] = this.requesterCity;
    data['HospitalName'] = this.requesterHospitalName;
    return data;
  }
}