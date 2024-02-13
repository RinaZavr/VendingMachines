import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';
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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        height: size.width * 0.38,
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
                    width: size.width * 0.38,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstMachine.machineButtonsColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        StringConstsMachine.machineLoadButtonOne,
                        style: TextStyleConstMachine.machineLoadButton,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    height: 48,
                    width: size.width * 0.38,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstMachine.machineButtonsColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        StringConstsMachine.machineLoadButtonTwo,
                        style: TextStyleConstMachine.machineLoadButton,
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
