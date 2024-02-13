import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/change_info_widget.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/checkbox_widget.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/form_cash_widget.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/mode_widget.dart';
import 'package:vendingmachines/ui/bottomSheet/widgets/price_list_widget.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                    color: ColorConstBottomSheet.bottomSheetButtonColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  margin: const EdgeInsets.only(bottom: 20),
                  width: size.width,
                  child: const Text(
                    StringConstBottomSheet.bottomSheetButton,
                    style: TextStyleConstBottomSheet.bottomSheetButtonTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
          appBar: AppBar(
          backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Text(
              StringConstBottomSheet.bottomSheetTitle,
              style: TextStyleConstBottomSheet.bottomSheetTitle,
            ),
            actions: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
          body: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ChangeInfoWidget(),
              ),
              SliverToBoxAdapter(
                child: FormCashWidget(),
              ),
              SliverToBoxAdapter(
                child: CheckboxWidget(),
              ),
              SliverToBoxAdapter(
                child: ModeWidget(),
              ),
              SliverToBoxAdapter(
                child: PriceListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
