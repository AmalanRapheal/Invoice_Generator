class Customer {
  String? key;
  CustomerData? customerData;

  Customer({this.key, this.customerData});
}

class CustomerData {
  String? event;
  String? name;
  String? location;
  String? remarks;
  String? mobile;
  String? amount;

  CustomerData(
      {this.event,
      this.name,
      this.location,
      this.remarks,
      this.mobile,
      this.amount});

  CustomerData.fromJson(Map<dynamic, dynamic> json) {
    event = json["event"];
    name = json["name"];
    location = json["location"];
    remarks = json["remarks"];
    mobile = json["mobile"];
    amount = json["amount"];
  }
}
