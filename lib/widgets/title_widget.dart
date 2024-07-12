// import 'package:flutter/material.dart';
// import 'package:invoice_generator/widgets/custom_card_widget.dart';
// import '../utilities/responsive.dart';

// class HeaderWidget extends StatelessWidget {
//   const HeaderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         if (!Responsive.isDesktop(context))
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: InkWell(
//               onTap: () => Scaffold.of(context).openDrawer(),
//               child: const Padding(
//                 padding: EdgeInsets.all(4.0),
//                 child: Icon(
//                   Icons.menu,
//                   color: Colors.grey,
//                   size: 25,
//                 ),
//               ),
//             ),
//           ),
//         if (!Responsive.isMobile(context))
//           const Expanded(
//             child: CustomCard(
//               child: Text(
//                 "INVOICE GENERATOR",
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         if (Responsive.isMobile(context))
//           Row(
//             children: [
//               IconButton(
//                 icon: const Icon(
//                   Icons.person,
//                   size: 25,
//                 ),
//                 onPressed: () {},
//               ),
//               InkWell(
//                 onTap: () => Scaffold.of(context).openEndDrawer(),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.transparent,
//                   child: Image.asset(
//                     "assets/images/avatar.jpg",
//                     width: 32,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//       ],
//     );
//   }
// }
