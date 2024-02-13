import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';

class FinanceWidget extends StatelessWidget {
  const FinanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          StringConstsMachine.machineFinanceTitle,
          style: TextStyleConstMachine.machineFinanceTitle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SizedBox(
            height: 75,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: size.width * 0.43,
                  child: ListTile(
                    leading: Image.asset(StringConstsMachine.machineFinances[index][0]),
                    title: Text(
                      StringConstsMachine.machineFinances[index][1],
                      style: TextStyleConstMachine.machineFinanceListTitle,
                    ),
                    subtitle: Text(
                      StringConstsMachine.machineFinances[index][2],
                      style: TextStyleConstMachine.machineFinanceListHint,
                    ),
                  ),
                );
              },
              itemCount: StringConstsMachine.machineFinances.length,
            ),
          ),
        ),
      ],
    );
  }
}
