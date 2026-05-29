import 'package:flutter/material.dart';

class ColorValueChanger extends StatelessWidget {
  final String colorName;
  final double value;
  final Color activeColor;
  final Function(double) onChanged;

  const ColorValueChanger({
    super.key,
    required this.colorName,
    required this.value,
    required this.activeColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$colorName: ${value.toInt()}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        Slider(
          value: value,
          min: 0,
          max: 255,
          activeColor: activeColor,
          onChanged: onChanged,
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}