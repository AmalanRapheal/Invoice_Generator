import 'package:flutter/material.dart';

const cardBackgroundColor = Colors.lightBlue;
const primaryColor = Color(0xFF2697FF);
// const secondaryColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFFFFFFF);
const selectionColor = Colors.white;
const drawerBackground = Colors.lightBlue;
const primaryTextColor = Colors.white;
const secondryTextColor = Colors.black;
const iconColor = Colors.blue;

const defaultPadding = 20.0;




// header() {
//   return const UserAccountsDrawerHeader(
//     accountName: Text(
//       'Anon',
//       style: TextStyle(fontSize: 22),
//     ),
//     accountEmail: Text(
//       'anon@gmail.com',
//       style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//     currentAccountPicture: ProfilePicture(
//       name: 'Anon',
//       role: 'Agent',
//       radius: 31,
//       fontsize: 25,
//       random: true,
//     ),
//   );
// }


//  Future<bool> _onWillPop() async {
//     return (await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to exit the App'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//               TextButton(
//                 onPressed: () async {
//                   exit(0);
//                 },
//                 child: const Text('Yes'),
//               ),
//             ],
//           ),
//         )) ??
//         false;
//   }