import 'package:flutter/material.dart';
import 'constants/constant.dart';
import 'screens/mainscreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDZORTujC_HeAmJVptfpNZKByT4JasMidI',
          appId: '1:841832739852:android:5dfd6bfc234b9f8ab8aa29',
          messagingSenderId: '841832739852',
          databaseURL:
              'https://receipt-generator-45951-default-rtdb.firebaseio.com/',
          projectId: 'Receipt Generator'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipt Generator',
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
    );
  }
}
