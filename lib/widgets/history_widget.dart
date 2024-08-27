import 'package:flutter/material.dart';
import 'package:invoice_generator/constants/constant.dart';

import '../data/history_task_data.dart';
import 'custom_card_widget.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final data = HistoryTasksData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(
              Icons.history,
              size: 20,
            ),
            Text(
              " HISTORY",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primaryTextColor),
            ),
          ],
        ),
        const SizedBox(height: 12),
        for (var index = 0; index < data.history.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: selectionColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.history[index].title,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: secondryTextColor,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            data.history[index].date,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            data.history[index].amount,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Center(
                        heightFactor: 1.5,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send_to_mobile,
                                color: primaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.print_sharp,
                                color: primaryColor,
                              ),
                            )

                            // Icon(
                            //   Icons.send_to_mobile,
                            //   color: primaryColor,
                            // ),
                            // SizedBox(width: 20),
                            // Icon(
                            //   Icons.print_sharp,
                            //   color: primaryColor,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
