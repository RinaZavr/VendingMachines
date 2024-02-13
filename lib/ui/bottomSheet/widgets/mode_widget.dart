import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';

class ModeWidget extends StatefulWidget {
  const ModeWidget({super.key});

  @override
  State<ModeWidget> createState() => _ModeWidgetState();
}

class _ModeWidgetState extends State<ModeWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            StringConstBottomSheet.bottomSheetModeTitle,
            style: TextStyleConstBottomSheet.bottomSheetModeTitle,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstBottomSheet.bottomSheetButtonColor,
                      width: 2,
                    ),
                    color: index == 0 ? ColorConstBottomSheet.bottomSheetButtonColor : ColorConstBottomSheet.bottomSheetMode,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    StringConstBottomSheet.bottomSheetModeTypeOne,
                    textAlign: TextAlign.center,
                    style: index == 0
                        ? TextStyleConstBottomSheet.bottomSheetModeTypeOn
                        : TextStyleConstBottomSheet.bottomSheetModeTypeOff,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstBottomSheet.bottomSheetButtonColor,
                      width: 2,
                    ),
                    color: index == 1 ? ColorConstBottomSheet.bottomSheetButtonColor : ColorConstBottomSheet.bottomSheetMode,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    StringConstBottomSheet.bottomSheetModeTypeTwo,
                    textAlign: TextAlign.center,
                    style: index == 1
                        ? TextStyleConstBottomSheet.bottomSheetModeTypeOn
                        : TextStyleConstBottomSheet.bottomSheetModeTypeOff,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
