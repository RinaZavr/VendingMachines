import 'package:flutter/material.dart';
import 'package:vendingmachines/ui/machine/screens/machine_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent)),
      home: const MachineMainScreen(),
    );
  }
}