class Customer {
  String? key;
  CustomerData? customerData;

  Customer({this.key, this.customerData});
}

class CustomerData {
  String? name;
  String? mobile;
  String? amount;

  CustomerData({this.name, this.mobile, this.amount});

  CustomerData.fromJson(Map<dynamic, dynamic> json) {
    name = json["name"];
    mobile = json["mobile"];
    amount = json["amount"];
  }
}
