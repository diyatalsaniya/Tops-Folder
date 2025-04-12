class DonorModel {
  String? donorId;
  String? donorName;
  String? donorEmail;
  int? donorContact;
  int? donorAge;
  String? donorBloodGroup;
  String? donorCity;
  String? donorHospitalName;

  DonorModel({
    this.donorId,
    this.donorName,
    this.donorEmail,
    this.donorContact,
    this.donorAge,
    this.donorBloodGroup,
    this.donorCity,
    this.donorHospitalName,
  });

  DonorModel.fromJson(Map<String, dynamic> json) {
    donorId = json['id'];
    donorName = json['name'];
    donorEmail = json['email'];
    donorContact = json['contact'];
    donorAge = json['age'];
    donorBloodGroup = json['bloodGroup'];
    donorCity = json['city'];
    donorHospitalName = json['hospitalName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.donorId;
    data['name'] = this.donorName;
    data['email'] = this.donorEmail;
    data['contact'] = this.donorContact;
    data['age'] = this.donorAge;
    data['bloodGroup'] = this.donorBloodGroup;
    data['city'] = this.donorCity;
    data['hospitalName'] = this.donorHospitalName;
    return data;
  }
}