import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Загрузка',
              style: TextStyle(
                  color: Color(0xFF131037),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            actions: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
          body: CustomScrollView(
            slivers: [
              
            ],
          ),
        ),
      ),
    );
  }
}
