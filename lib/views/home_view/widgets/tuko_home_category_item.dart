import 'package:flutter/material.dart';

class TukoCategoryItem extends StatelessWidget {
  const TukoCategoryItem({
    super.key,
    required this.itemTitle,
    required this.itemColor,
    required this.onTap,
  });
  final String itemTitle;
  final Color itemColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        color: itemColor,
        child: Text(
          itemTitle,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
