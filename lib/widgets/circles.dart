import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: count % 2 == 0 ? Colors.green : Colors.red,
      child: CircleAvatar(
        radius: 13,
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
