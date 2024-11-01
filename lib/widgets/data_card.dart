import 'package:flutter/material.dart';
import 'package:invoice_generator/widgets/custom_card_widget.dart';
import 'package:firebase_database/firebase_database.dart';
import '../constants/constant.dart';
import '../modal/customer_model.dart';

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  DatabaseReference dbRef = FirebaseDatabase.instance.ref();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController remarksController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  List<Customer> customerList = [];

  bool updateCustomer = false;

  @override
  void initState() {
    super.initState();

    retrieveCustomerData();
  }

  @override
  Widget build(BuildContext context, {String? key}) {
    return CustomCard(
      child: Container(
        padding: EdgeInsets.all(5),
        // color: Colors.lightBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            /*Card(
          child: cardPreview(
            cardHolder: nameController.text.isEmpty
                ? "Recipient Name"
                : nameController.text.toUpperCase(),
            location: locationController.text.isEmpty
                ? "Location"
                : locationController.text.toUpperCase(),
            mobileNumber: mobileNumberController.text.isEmpty
                ? "Mobile Number"
                : mobileNumberController.text,
          ),
        ),*/
            const SizedBox(height: 12),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.12,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: DropdownButtonFormField(
                iconEnabledColor: iconColor,
                dropdownColor: backgroundColor,
                // controller: cardHolderNameController,

                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  hintText: 'SELECT AN EVENT',
                  hintStyle: TextStyle(
                    color: secondryTextColor,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.church_outlined,
                    color: iconColor,
                  ),
                ),
                onChanged: (value) {
                  //
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text(
                      "Prayer Service",
                      style: TextStyle(color: secondryTextColor),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text(
                      "Donation",
                      style: TextStyle(color: secondryTextColor),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text(
                      "Offering",
                      style: TextStyle(color: secondryTextColor),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "4",
                    child: Text(
                      "Occasion Gift",
                      style: TextStyle(color: secondryTextColor),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.12,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                style: const TextStyle(color: secondryTextColor),
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  labelText: 'Recipient Name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: iconColor,
                  ),
                  suffixIcon: Icon(Icons.abc),
                ),
                onChanged: (value) {
                  // setState(() {
                  //   nameController.value = nameController.value.copyWith(
                  //       text: value,
                  //       selection:
                  //           TextSelection.collapsed(offset: value.length),
                  //       composing: TextRange.empty);
                  // });
                },
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.12,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                style: const TextStyle(color: secondryTextColor),
                controller: locationController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  labelText: 'Location',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: iconColor,
                  ),
                  suffixIcon: Icon(Icons.abc),
                ),
                onChanged: (value) {
                  // setState(() {});
                },
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.12,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                style: const TextStyle(color: secondryTextColor),
                controller: remarksController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    labelText: 'Remarks',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.more_sharp,
                      color: iconColor,
                    ),
                    suffixIcon: Icon(Icons.abc),
                    suffix: Text('(Optional)')),
                onChanged: (value) {
                  // var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                  // setState(() {
                  //   mobileNumberController.value = mobileNumberController.value
                  //       .copyWith(
                  //           text: text,
                  //           selection:
                  //               TextSelection.collapsed(offset: text.length),
                  //           composing: TextRange.empty);
                  // });
                },
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 4.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: secondryTextColor),
                    controller: mobileNumberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        labelText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.phone_android_sharp,
                          color: iconColor,
                        ),
                        suffixIcon: Icon(Icons.onetwothree_sharp),
                        suffix: Text(
                          '(Optional)',
                        )),
                    onChanged: (value) {
                      var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                      setState(() {
                        mobileNumberController.value =
                            mobileNumberController.value.copyWith(
                                text: text,
                                selection: TextSelection.collapsed(
                                    offset: text.length),
                                composing: TextRange.empty);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 4.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: secondryTextColor),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      labelText: 'Enter Amount',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.currency_rupee_sharp,
                        color: iconColor,
                      ),
                      suffixIcon: Icon(Icons.onetwothree_sharp),
                    ),
                    onTap: () {},
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    ElevatedButton.icon(
                      label: Text(
                        'save'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      icon: const Icon(
                        Icons.add,
                      ),
                      iconAlignment: IconAlignment.start,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Map<String, dynamic> data = {
                          "name": nameController.text.toString(),
                          "loaction": locationController.text.toString(),
                          "remarks": remarksController.text.toString(),
                          "mobile": mobileNumberController.text.toString(),
                          "amount": amountController.text.toString()
                        };

                        if (updateCustomer) {
                          dbRef
                              .child("Customers")
                              .child(key ??= "default")
                              .update(data)
                              .then((value) {
                            int index = customerList
                                .indexWhere((element) => element.key == key);
                            customerList.removeAt(index);
                            customerList.insert(
                                index,
                                Customer(
                                    key: key,
                                    customerData: CustomerData.fromJson(data)));
                            setState(() {});
                          });
                        } else {
                          dbRef
                              .child("Customers")
                              .push()
                              .set(data)
                              .then((value) {
//Just me created something useless
                            // showDialog(
                            //     context: context,
                            //     builder: (context) {
                            //       return Dialog(
                            //         child: Container(
                            //           child: Text('Added Successfully'),
                            //         ),
                            //       );
                            //     });
                          });
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        'Save & Print'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      icon: const Icon(
                        Icons.print_sharp,
                      ),
                      iconAlignment: IconAlignment.start,
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        'Clear'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      icon: const Icon(
                        Icons.clear,
                      ),
                      iconAlignment: IconAlignment.start,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }

// // Retrive Data - Work-In-Progress

  void retrieveCustomerData() {
    dbRef.child("Customer").onChildAdded.listen((data) {
      CustomerData customerData =
          CustomerData.fromJson(data.snapshot.value as Map);
      Customer customer =
          Customer(key: data.snapshot.key, customerData: customerData);
      customerList.add(customer);
      setState(() {});
    });
  }
}
