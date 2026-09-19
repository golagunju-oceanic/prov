import 'package:flutter/material.dart';
// import 'package:prov/provider/value_provider.dart';
import 'package:prov/widgets/bottom_nav_bar.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  MultiProvider(
      // providers: [ChangeNotifierProvider(create: (_) => ValueProvider())],
      // child:
       MaterialApp(
        home: Scaffold(bottomNavigationBar: CustomBottomNav()),
      );
    // );
  }
}
