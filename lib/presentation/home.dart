import 'package:dhasvi/beautify/containerdecration/container_decration.dart';
import 'package:dhasvi/beautify/text_style/textstyle.dart';
import 'package:dhasvi/core/state.dart';
import 'package:dhasvi/widgets/circles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            final circles = ref.watch(circleprovider);
            return GestureDetector(
              onLongPress: () {
                ref.read(counterprovider.notifier).state = 0;
                ref.read(circleprovider.notifier).state = [];
              },
              onTap: () {
                ref.read(counterprovider.notifier).state++;
                ref.read(circleprovider.notifier).update(
                  (state) {
                    return [
                      Circles(count: count),
                    ];
                  },
                );
              },
              child: Stack(
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
                  Positioned(
                    top: height / 2 - 206,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: circles,
                    ),
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
