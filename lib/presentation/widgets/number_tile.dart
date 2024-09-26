import 'package:flutter/material.dart';

class NumberTile extends StatelessWidget {
  final int number;
  final Color highlightColor;

  NumberTile({required this.number, required this.highlightColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add any tap interaction
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: highlightColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          '$number',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
