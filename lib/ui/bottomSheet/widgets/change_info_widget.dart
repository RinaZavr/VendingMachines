import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';

class ChangeInfoWidget extends StatelessWidget {
  const ChangeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done,
            color: ColorConstBottomSheet.bottomSheetChangeInfoIconColor,
            size: 30,
          ),
          SizedBox(width: 16),
          Text(
            StringConstBottomSheet.bottomSheetChangeInfo,
            style: TextStyleConstBottomSheet.bottomSheetChangeInfo,
          ),
        ],
      ),
    );
  }
}
