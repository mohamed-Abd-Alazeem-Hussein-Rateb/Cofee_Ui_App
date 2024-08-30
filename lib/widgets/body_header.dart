import 'package:flutter/material.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Bilzen, Tanjungbalai',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.start,
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
        )
      ],
    );
  }
}