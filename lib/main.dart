import 'package:bmicalculatorapp/bmicalculator.dart';
import 'package:bmicalculatorapp/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BMIProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiCalculator(),
      ),
    );
  }
}





// for provider only
// Widget build(BuildContext context) {
//   return MultiProvider(
//     providers: [
//       ChangeNotifierProvider<JokeProviderServices>(
//         create: (_) => JokeProviderServices(),
//       ),
//     ],
//     child: const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: JokeScreen(),
//     ),
//   );
// }
