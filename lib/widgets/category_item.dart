import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import '../models/category_item_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({
    super.key,
    required this.item,
  });
  final CategoryItemModel item;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
            color: AppColors.kYellowColor,
            child: Image.asset(
              item.imagePath,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                item.japName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.engName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () async {
                await player.play(AssetSource(item.audioPath));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}
