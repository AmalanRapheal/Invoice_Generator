import 'package:flutter/material.dart';
import 'package:invoice_generator/widgets/custom_card_widget.dart';

import '../constants/constant.dart';

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Container(
        padding: const EdgeInsets.all(5),
        // color: Colors.lightBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                controller: cardHolderNameController,
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
                  setState(() {
                    cardHolderNameController.value =
                        cardHolderNameController.value.copyWith(
                            text: value,
                            selection:
                                TextSelection.collapsed(offset: value.length),
                            composing: TextRange.empty);
                  });
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
                  setState(() {});
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
                controller: mobileNumberController,
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
                    // controller: cardExpiryDateController,
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

                    // controller: cardCvvController,
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add & Print'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Clear'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
}
