import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      children: List.generate(
        8,
        (index) => Container(
          padding: const EdgeInsets.all(10),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
          ),
        ),
      ),
    );
  }
}