import 'package:flutter/material.dart';
import 'package:invoice_generator/widgets/preview_widget.dart';
import '../utilities/responsive.dart';
import '../widgets/dashboard_widget.dart';
import '../widgets/side_menu_widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'RECEIPT GENERATOR',
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.find_in_page_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: SideMenuWidget(),
      ),

      // drawer: !isDesktop
      //     ? const SizedBox(
      //         width: 250,
      //         child: SideMenuWidget(),
      //       )
      //     : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const PreviewWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            // if (isDesktop)
            //   const Expanded(
            //     flex: 2,
            //     child: SizedBox(
            //       child: SideMenuWidget(),
            //     ),
            //   ),
            const Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: PreviewWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
