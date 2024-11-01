import 'package:flutter/material.dart';
import '../constants/constant.dart';

class PreviewCard extends StatefulWidget {
  const PreviewCard({super.key});
  @override
  State<PreviewCard> createState() => _PreviewCardState();
}

class _PreviewCardState extends State<PreviewCard> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController mobileNumberController =
        TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController amountController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 5),
        Card(
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
              amount: amountController.text.isEmpty
                  ? "Amount"
                  : amountController.text),
        ),
      ],
    );
  }
}

Card cardPreview({
  required String cardHolder,
  required String location,
  required String mobileNumber,
  required String amount,
}) {
  return Card(
    elevation: 4.0,
    color: backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      height: 350,
      padding: const EdgeInsets.only(
          top: 8.0, left: 16.0, right: 16.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RECEIPT',
                style: TextStyle(
                  color: secondryTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                ),
              ),
              Text(
                '12/02/24',
                style: TextStyle(
                  color: secondryTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'RECIPIENT',
                value: cardHolder,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'LOCATION',
                value: location,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'MOBILE NO',
                value: mobileNumber,
              ),
              buildDetailsBlock(
                label: 'AMOUNT',
                value: amount,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'We Thank You for Your Presence',
                style: TextStyle(color: secondryTextColor),
              ),
              Icon(
                Icons.insert_emoticon_outlined,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    ),
  );
}

Column buildDetailsBlock({required String label, required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            color: secondryTextColor,
            fontSize: 10,
            fontWeight: FontWeight.bold),
      ),
      Text(
        value,
        style: const TextStyle(
          color: secondryTextColor,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: .5,
        ),
      ),
    ],
  );
}
