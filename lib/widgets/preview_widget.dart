import 'package:flutter/material.dart';
import '../constants/constant.dart';
import 'history_widget.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: drawerBackground,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.remove_red_eye_rounded,
                  size: 20,
                ),
                Text(
                  ' PREVIEW',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: primaryTextColor),
                ),
              ],
            ),
            SizedBox(height: 40),
            History(),
          ],
        ),
      ),
    );
  }
}
