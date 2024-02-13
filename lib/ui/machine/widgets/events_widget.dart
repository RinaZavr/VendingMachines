import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';
import 'package:vendingmachines/ui/machine/widgets/event_template_widget.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          StringConstsMachine.machineEventTitle,
          style: TextStyleConstMachine.machineEventTitle,
        ),
        EventTemplateWidget(
          time: StringConstsMachine.machineEvents[0][0],
          title: StringConstsMachine.machineEvents[0][1],
        ),
        EventTemplateWidget(
          time: StringConstsMachine.machineEvents[1][0],
          title: StringConstsMachine.machineEvents[1][1],
          subtitle: StringConstsMachine.machineEvents[1][2],
        ),
        EventTemplateWidget(
          time: StringConstsMachine.machineEvents[2][0],
          title: StringConstsMachine.machineEvents[2][1],
          subtitle: StringConstsMachine.machineEvents[2][2],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 24),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstMachine.machineButtonsColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                StringConstsMachine.machineEventButton,
                style: TextStyleConstMachine.machineEventButton,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
