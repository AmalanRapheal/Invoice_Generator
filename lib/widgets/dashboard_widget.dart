import 'package:flutter/material.dart';
import 'package:invoice_generator/widgets/preview_widget.dart';

import '../utilities/responsive.dart';
import 'input_data_card.dart';
import 'list_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            // const SizedBox(height: 18),
            // const HeaderWidget(),
            // const SizedBox(height: 18),
            // const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const InputDataCard(),
            const SizedBox(height: 18),
            const ListCard(),
            // const BarGraphCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const PreviewWidget(),
          ],
        ),
      ),
    );
  }
}
