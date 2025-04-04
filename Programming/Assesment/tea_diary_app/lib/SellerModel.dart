class SellerModel {
  String? id;
  String? name;
  String? mobile;
  String? address;

  SellerModel(
      {
        this.id,
        this.name,
        this.mobile,
        this.address
      });

  SellerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] =  this.id;
    data['name'] = this.name;
    data['mobile'] =  this.mobile;
    data['address'] = this.address;
    return data;
  }

}