import 'package:flutter/material.dart';
import 'package:vendingmachines/ui/machine/widgets/load_container.dart';

class LoadButtonsWidget extends StatefulWidget {
  const LoadButtonsWidget({super.key});

  @override
  State<LoadButtonsWidget> createState() => _LoadButtonsWidgetState();
}

class _LoadButtonsWidgetState extends State<LoadButtonsWidget> {
  int loadPer = 85;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        height: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadContainer(loadPer: loadPer),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF218CEF),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Загрузка',
                        style: TextStyle(
                            color: Color(0xFF218CEF),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    height: 48,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF218CEF),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Инвентаризация',
                        style: TextStyle(
                            color: Color(0xFF218CEF),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
