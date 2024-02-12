import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class LoadContainer extends StatefulWidget {
  final int loadPer;
  const LoadContainer({super.key, required this.loadPer});

  @override
  State<LoadContainer> createState() => _LoadContainerState();
}

class _LoadContainerState extends State<LoadContainer> {
  int curLoadPer = 0;

  @override
  void initState() {
    setPer();
    super.initState();
  }

  setPer() async {
    for(int i = 0; i < widget.loadPer; i++) {
      await Future.delayed(const Duration(milliseconds: 10), () {
        setState(() {
        curLoadPer += 1;
      });
      });
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: Stack(
        children: [
          LiquidLinearProgressIndicator(
            value: curLoadPer /
                100, // Фиксированное значение 1, чтобы волна заполняла всю ширину контейнера
            valueColor: const AlwaysStoppedAnimation(Color(0xFF218CEF)), // Цвет волны
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
                  style: const TextStyle(
                    color: Color(0xFF131037),
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Текущий уровень загрузки',
                  style: TextStyle(
                    color: Color(0xFF131037),
                    fontSize: 14,
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