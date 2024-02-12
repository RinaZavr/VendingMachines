import 'package:flutter/material.dart';
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
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 100),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const BottomSheetScreen();
                  });
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
                'Торговые автоматы',
                style: TextStyle(
                    color: Color(0xFF131037),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
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
