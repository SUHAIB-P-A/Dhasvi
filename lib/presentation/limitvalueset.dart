import 'package:dhasvi/core/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LimitValueSet extends ConsumerWidget {
  const LimitValueSet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(limitValueControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Set Limit"),
      ),
    );
  }
}
