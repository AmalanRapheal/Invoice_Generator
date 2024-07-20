import 'package:flutter/material.dart';

class InputDataCard extends StatefulWidget {
  const InputDataCard({super.key});
  @override
  State<InputDataCard> createState() => _InputDataCardState();
}

class _InputDataCardState extends State<InputDataCard> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        // Card(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 10),
        //     child: cardPreview(
        //       color: Colors.lightGreen,
        //       cardNumber: cardHolderNameController.text.isEmpty
        //           ? "Mobile Number"
        //           : cardHolderNameController.text.toUpperCase(),
        //       cardHolder: cardNumberController.text.isEmpty
        //           ? "Recipient Name"
        //           : cardNumberController.text,
        //     ),
        //   ),
        // ),
        const SizedBox(height: 40),
        Container(
          height: 55,
          width: MediaQuery.of(context).size.width / 1.12,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            controller: cardHolderNameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              hintText: 'Full Name',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            onChanged: (value) {
              setState(() {
                cardHolderNameController.value = cardHolderNameController.value
                    .copyWith(
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
            controller: cardNumberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              hintText: 'Card Number',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              prefixIcon: Icon(
                Icons.credit_card,
                color: Colors.grey,
              ),
            ),
            onChanged: (value) {
              var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
              setState(() {
                cardNumberController.value = cardNumberController.value
                    .copyWith(
                        text: text,
                        selection: TextSelection.collapsed(offset: text.length),
                        composing: TextRange.empty);
              });
            },
          ),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: Size(MediaQuery.of(context).size.width / 1.12, 55),
          ),
          onPressed: () {},
          child: Text(
            'Add Card'.toUpperCase(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
