import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: ColorConstBottomSheet.bottomSheetCheckboxBorder,),
            ),
            child: Checkbox(
              side: const BorderSide(color: Colors.transparent,),
              checkColor: ColorConstBottomSheet.bottomSheetCheckboxCheck,
              fillColor: const MaterialStatePropertyAll(Colors.transparent),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          const SizedBox(width: 16),
            const Text(
              StringConstBottomSheet.bottomSheetCheckboxTitle,
              style: TextStyleConstBottomSheet.bottomSheetCheckboxTitle
            )
        ],
      ),
    );
  }
}