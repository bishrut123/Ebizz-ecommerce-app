import 'package:final_project/constants/global_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebizz',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: AppBarTheme(color: GlobalVariables.secondaryColor),
        primaryColor: GlobalVariables.secondaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                'Flutter Demo Home Page',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
