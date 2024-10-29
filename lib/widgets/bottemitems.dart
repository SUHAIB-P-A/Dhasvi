import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  const BottomItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            
          },
          child: Image.asset(
            "assets/images/speed.png",
          ),
        ),
      ],
    );
  }
}
