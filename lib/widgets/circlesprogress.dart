import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircleProgress extends StatelessWidget {
  final int count;

  const CircleProgress({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (count / 100).clamp(0.0, 1.0);
    return CircularPercentIndicator(
      radius: 147,
      lineWidth: 10,
      animation: true,
      percent: percentage,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: const Color(0xFFF70505),
      animationDuration: 500,
      animateFromLastPercent: true,
    );
  }
}
