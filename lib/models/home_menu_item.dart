import 'package:flutter/material.dart';

class HomeMenuItem {
  final String title;
  final String imageAsset;
  final VoidCallback? onTap;

  const HomeMenuItem({
    required this.title,
    required this.imageAsset,
    this.onTap,
  });
}