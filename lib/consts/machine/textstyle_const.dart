import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';

abstract class TextStyleConstMachine {
  static const TextStyle machineTitle = TextStyle(
    color: ColorConstMachine.machineMainColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle machineInfoTitle = TextStyle(
    color: ColorConstMachine.machineMainColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle machineInfoMain = TextStyle(
    color: ColorConstMachine.machineMainColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle machineInfoHint = TextStyle(
    color: ColorConstMachine.machineHintColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle machineLoadButton = TextStyle(
    color: ColorConstMachine.machineButtonsColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  // static const TextStyle machineLoadPercent = TextStyle(
  //   color: ColorConstMachine.machineMainColor,
  //   fontSize: 40,
  //   fontWeight: FontWeight.w700,
  // );
  // static const TextStyle machineLoadInfo = TextStyle(
  //   color: ColorConstMachine.machineMainColor,
  //   fontSize: 14,
  //   fontWeight: FontWeight.w500,
  // );

  static const TextStyle machineEventTitle = TextStyle(
    color: ColorConstMachine.machineMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle machineEventListTime = TextStyle(
      color: ColorConstMachine.machineEventListTime,
      fontSize: 14,
      fontWeight: FontWeight.w500);
  static const TextStyle machineEventListTitle = TextStyle(
      color: ColorConstMachine.machineMainColor,
      fontSize: 16,
      fontWeight: FontWeight.w500);
  static const TextStyle machineEventListHint = TextStyle(
      color: ColorConstMachine.machineEventListHint,
      fontSize: 12,
      fontWeight: FontWeight.w400);
  static const TextStyle machineEventButton = TextStyle(
    color: ColorConstMachine.machineButtonsColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle machineFinanceTitle = TextStyle(
      color: ColorConstMachine.machineMainColor, fontSize: 16, fontWeight: FontWeight.w500);
  static const TextStyle machineFinanceListTitle = TextStyle(
      color: ColorConstMachine.machineMainColor, fontSize: 14, fontWeight: FontWeight.w500);
  static const TextStyle machineFinanceListHint = TextStyle(
      color: ColorConstMachine.machineMainColor, fontSize: 14, fontWeight: FontWeight.w300);
}
