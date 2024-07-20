import 'package:flutter/material.dart';

import '../constants/constant.dart';

Card cardPreview({
  required String cardNumber,
  required String cardHolder,
  required String location,
}) {
  return Card(
    elevation: 4.0,
    color: backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      height: 250,
      padding: const EdgeInsets.only(
          top: 8.0, left: 16.0, right: 16.0, bottom: 22.0),
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
                  fontWeight: FontWeight.w500,
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
                label: 'Recipient',
                value: cardHolder,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'Location',
                value: location,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildDetailsBlock(
                label: 'Mobile No',
                value: cardNumber,
              ),
            ],
          ),
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
      )
    ],
  );
}

class PreviewCard extends StatefulWidget {
  const PreviewCard({super.key});
  @override
  State<PreviewCard> createState() => _PreviewCardState();
}

class _PreviewCardState extends State<PreviewCard> {
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            cardNumber: mobileNumberController.text.isEmpty
                ? "Mobile Number"
                : mobileNumberController.text,
          ),
        ),
      ],
    );
  }
}
