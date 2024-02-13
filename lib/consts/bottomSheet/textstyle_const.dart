import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';

abstract class TextStyleConstBottomSheet {
  static const TextStyle bottomSheetTitle = TextStyle(
      color: ColorConstBottomSheet.bottomSheetMainColor,
      fontSize: 24,
      fontWeight: FontWeight.w700);
  static const TextStyle bottomSheetButtonTitle = TextStyle(
    color: ColorConstBottomSheet.bottomSheetButtonTitleColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bottomSheetChangeInfo = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bottomSheetFormCashTitle = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bottomSheetFormCashHint = TextStyle(
    color: ColorConstBottomSheet.bottomSheetFormCashHint,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bottomSheetCheckboxTitle = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bottomSheetModeTitle = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bottomSheetModeTypeOn = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMode,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle bottomSheetModeTypeOff = TextStyle(
    color: ColorConstBottomSheet.bottomSheetButtonColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bottomSheetPriceListTitle = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  // static const TextStyle bottomSheetPriceListInfo = TextStyle(
  //   color: ColorConstBottomSheet.bottomSheetMainColor,
  //   fontSize: 14,
  //   fontWeight: FontWeight.w300,
  // );
  static const TextStyle bottomSheetPriceListTableNameColumn = TextStyle(
    color: ColorConstBottomSheet.bottomSheetPriceListTableName,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle bottomSheetPriceListTableValueColumn = TextStyle(
    color: ColorConstBottomSheet.bottomSheetMainColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle bottomSheetPriceListButton = TextStyle(
    color: ColorConstBottomSheet.bottomSheetButtonColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
}
