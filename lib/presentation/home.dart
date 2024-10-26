import 'package:dhasvi/beautify/containerdecration/container_decration.dart';
import 'package:dhasvi/beautify/text_style/textstyle.dart';
import 'package:dhasvi/core/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.sizeOf(context).height;
    final double weidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(counterprovider);

            return GestureDetector(
              onLongPress: () {
                ref.read(counterprovider.notifier).state = 0;
              },
              onTap: () {
                ref.read(counterprovider.notifier).state++;
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: height - 200,
                    width: weidth - 100,
                    decoration: boxDecoration,
                    child: Center(
                      child: Text(
                        '$count',
                        style: textStyle,
                      ),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 147,
                    lineWidth: 10,
                    animation: true,
                    percent: 0.1,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.purple,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
