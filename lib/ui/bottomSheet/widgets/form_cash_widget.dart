import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/input_cash_template_widget.dart';

class FormCashWidget extends StatefulWidget {
  const FormCashWidget({super.key});

  @override
  State<FormCashWidget> createState() => _FormCashWidgetState();
}

class _FormCashWidgetState extends State<FormCashWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstBottomSheet.bottomSheetFormCashTitleOne,
          style: TextStyleConstBottomSheet.bottomSheetFormCashTitle
        ),
        InputCashTemplateWidget(),
        SizedBox(height: 24),
        Text(
          StringConstBottomSheet.bottomSheetFormCashTitleTwo,
          style: TextStyleConstBottomSheet.bottomSheetFormCashTitle
        ),
        InputCashTemplateWidget(),
      ],
    );
  }
}
