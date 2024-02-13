import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';

class InputCashTemplateWidget extends StatefulWidget {
  const InputCashTemplateWidget({super.key});

  @override
  State<InputCashTemplateWidget> createState() => _InputCashTemplateWidgetState();
}

class _InputCashTemplateWidgetState extends State<InputCashTemplateWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: StringConstBottomSheet.bottomSheetFormCashHintOne,
                hintStyle: TextStyleConstBottomSheet.bottomSheetFormCashHint,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorConstBottomSheet.bottomSheetFormCashBorder,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: StringConstBottomSheet.bottomSheetFormCashHintTwo,
                hintStyle: TextStyleConstBottomSheet.bottomSheetFormCashHint,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorConstBottomSheet.bottomSheetFormCashBorder,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
