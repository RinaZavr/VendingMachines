import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';
import 'package:vendingmachines/consts/machine/textstyle_const.dart';
import 'package:vendingmachines/ui/bottomSheet/screens/bottom_sheet_screen.dart';
import 'package:vendingmachines/ui/machine/widgets/events_widget.dart';
import 'package:vendingmachines/ui/machine/widgets/finance_widget.dart';
import 'package:vendingmachines/ui/machine/widgets/info_widget.dart';
import 'package:vendingmachines/ui/machine/widgets/load_buttons_widget.dart';

class MachineMainScreen extends StatefulWidget {
  const MachineMainScreen({super.key});

  @override
  State<MachineMainScreen> createState() => _MachineMainScreenState();
}

class _MachineMainScreenState extends State<MachineMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorConstMachine.machineAppBar,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: ColorConstMachine.machineAppBar,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                backgroundColor: Colors.white,
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 100),
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return const BottomSheetScreen();
                },
              );
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                StringConstsMachine.machineTitle,
                style: TextStyleConstMachine.machineTitle,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: InfoWidget(),
            ),
            SliverToBoxAdapter(
              child: LoadButtonsWidget(),
            ),
            SliverToBoxAdapter(
              child: EventsWidget(),
            ),
            SliverToBoxAdapter(
              child: FinanceWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
