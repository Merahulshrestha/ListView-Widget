import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCube extends StatelessWidget {
  final String child;
  const MyCube({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Center(child: Text(child)),
          ),
        ],
      ),
    );
  }
}
