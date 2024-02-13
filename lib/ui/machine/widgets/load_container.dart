import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:vendingmachines/consts/machine/color_const.dart';
import 'package:vendingmachines/consts/machine/string_consts.dart';

class LoadContainer extends StatefulWidget {
  final int loadPer;
  const LoadContainer({super.key, required this.loadPer});

  @override
  State<LoadContainer> createState() => _LoadContainerState();
}

class _LoadContainerState extends State<LoadContainer> {
  int curLoadPer = 0;
  Color? bg;
  bool isFill = false;

  @override
  void initState() {
    setPer();
    super.initState();
  }

  setPer() async {
    for (int i = 0; i < widget.loadPer; i++) {
      await Future.delayed(
        const Duration(milliseconds: 10),
        () {
          setState(() {
            curLoadPer += 1;
          });
        },
      );
    }
    setState(() {
      bg = ColorConstMachine.machineButtonsColor;
      isFill = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.38,
      height: size.width * 0.38,
      color: widget.loadPer == 0
          ? Colors.white
          : widget.loadPer == 100
              ? bg
              : null,
      child: Stack(
        children: [
          widget.loadPer == 0 || isFill
              ? Container()
              : LiquidLinearProgressIndicator(
                  value: curLoadPer / 100,
                  valueColor: const AlwaysStoppedAnimation(
                      ColorConstMachine.machineButtonsColor),
                  backgroundColor: Colors.transparent,
                  direction: Axis.vertical,
                ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$curLoadPer %',
                  style: TextStyle(
                    // не в константах, потому что контейнер ограничен и нужен динамический размер шрифта
                    color: ColorConstMachine.machineMainColor,
                    fontSize: size.height * 0.046,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  StringConstsMachine.machineLoadInfo,
                  style: TextStyle(
                    color: ColorConstMachine.machineMainColor,
                    fontSize: size.height * 0.016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
