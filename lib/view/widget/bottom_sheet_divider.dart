import 'package:flutter/material.dart';

class BottomSheetDivider extends StatelessWidget {
  const BottomSheetDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: Center(
        child: SizedBox(
          width: 64,
          child: Divider(
            thickness: 4,
          ),
        ),
      ),
    );
  }
}
