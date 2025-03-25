import 'package:flutter/material.dart';

class GetEmoji extends StatelessWidget {
  final String emoji;

  const GetEmoji({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Text(
      emoji,
      style: const TextStyle(fontSize: 48),
    );
  }
}
