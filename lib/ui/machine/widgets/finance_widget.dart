import 'package:flutter/material.dart';

class FinanceWidget extends StatelessWidget {
  const FinanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List info = [
      ['assets/Cashback.png', '5700 ₽', 'Деньги в ТА'],
      ['assets/Money.png', '1 255 ₽', 'Сдача'],
      ['assets/Cashback.png', '5700 ₽', 'Деньги в ТА'],
      ['assets/Money.png', '1 255 ₽', 'Сдача'],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Финансы',
          style: TextStyle(
              color: Color(0xFF131037),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SizedBox(
            height: 75,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 180,
                  child: ListTile(
                    leading: Image.asset(info[index][0]),
                    title: Text(
                      info[index][1],
                      style: const TextStyle(
                          color: Color(0xFF131037),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      info[index][2],
                      style: const TextStyle(
                          color: Color(0xFF131037),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                );
              },
              itemCount: info.length,
            ),
          ),
        ),
      ],
    );
  }
}
