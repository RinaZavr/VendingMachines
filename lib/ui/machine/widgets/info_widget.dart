import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConstsMachine.machineInfoTitle,
                style: TextStyleConstMachine.machineInfoTitle
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: ColorConstMachine.machineInfoStatus,
                      size: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        StringConstsMachine.machineInfoStatus,
                        style: TextStyleConstMachine.machineInfoMain
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                StringConstsMachine.machineInfoAddress,
                style: TextStyleConstMachine.machineInfoHint,
              ),
              const SizedBox(
                height: 24,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringConstsMachine.machineInfo[index][0],
                        style: TextStyleConstMachine.machineInfoMain,
                      ),
                      Text(
                        StringConstsMachine.machineInfo[index][1],
                        style: TextStyleConstMachine.machineInfoMain,
                      ),
                    ],
                  );
                }),
                itemCount: StringConstsMachine.machineInfo.length,
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              StringConstsMachine.machineInfoType,
              textAlign: TextAlign.end,
              style: TextStyleConstMachine.machineInfoHint,
            ),
          ),
        ),
      ],
    );
  }
}
