import 'package:dhasvi/beautify/containerdecration/container_decration.dart';
import 'package:dhasvi/beautify/text_style/textstyle.dart';
import 'package:dhasvi/core/state.dart';
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
            return Container(
              height: height - 200,
              width: weidth - 100,
              decoration: boxDecoration,
              child: Text(
                '$count',
                style: textStyle,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'uniqueHeroTag1',
        onPressed: () {
          ref.read(counterprovider.notifier).state++;
        },
      ),
    );
  }
}
