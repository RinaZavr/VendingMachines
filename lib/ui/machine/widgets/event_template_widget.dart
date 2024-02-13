import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';

class EventTemplateWidget extends StatelessWidget {
  final String time;
  final String title;
  final String? subtitle;
  const EventTemplateWidget({super.key, required this.time, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 8,),
          decoration: BoxDecoration(
              border: const Border(
                left: BorderSide(color: ColorConstMachine.machineEventBorder, width: 4),
              ),
              borderRadius: BorderRadius.circular(4)),
          child: ListTile(
            leading: Text(
              time,
              style: TextStyleConstMachine.machineEventListTime,
            ),
            title: Text(
              title,
              style: TextStyleConstMachine.machineEventListTitle,
            ),
            subtitle: subtitle != null ? Text(
              subtitle!,
              style: TextStyleConstMachine.machineEventListHint,
            ) : null,
          ),
        );
  }
}