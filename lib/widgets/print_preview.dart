import 'package:flutter/material.dart';
import 'package:invoice_generator/constants/constant.dart';

// import '../Widgets/invoice_table.dart';
// import '../Widgets/save_btn.dart';
import '../modal/image_builder_model.dart';
import '../modal/spacer_model.dart';
import 'invoice_data.dart';
import 'save_btn.dart';

class PrintPreview extends StatefulWidget {
  const PrintPreview({super.key});

  @override
  State<PrintPreview> createState() => _PrintPreviewState();
}

class _PrintPreviewState extends State<PrintPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5),
            borderRadius: BorderRadius.circular(14),
          ),
          color: backgroundColor),
      child: Column(
        children: [
          HeightSpacer(myHeight: 10.00),

          Text("R E C E I P T",
              style: TextStyle(
                  fontSize: 25.00,
                  fontWeight: FontWeight.bold,
                  color: secondryTextColor)),
          // HeightSpacer(myHeight: 10.00),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Align(
              alignment: Alignment.topRight,
              child: ImageBuilder(
                imagePath: "assets/Images/avatar.jpg",
                imgWidth: 50,
                imgheight: 50,
              ),
            ),
          ),
          InvoiceData(),
          HeightSpacer(myHeight: 5.00),
          Text(
            "Thanks for Your Patronage!",
            style: TextStyle(color: Colors.grey, fontSize: 15.00),
          ),
          HeightSpacer(myHeight: 5.00),
          Text(
            "Contact the Admin for any clarifications.",
            style: TextStyle(color: Colors.grey, fontSize: 15.00),
          ),
          // HeightSpacer(myHeight: 15.00),
          // SaveBtnBuilder(),
        ],
      ),
    );
  }
}
