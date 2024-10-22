import 'package:dhasvi/beautify/text_style/textstyle.dart';
import 'package:dhasvi/core/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final count = ref.watch(counterprovider);
            return Text(
              '$count',
              style: textStyle,
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
