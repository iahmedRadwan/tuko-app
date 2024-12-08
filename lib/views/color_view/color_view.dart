import 'package:flutter/material.dart';
import 'package:tuko_app/widgets/custom_app_bar.dart';

import '../../models/category_item_model.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../widgets/category_item.dart';

class ColorView extends StatelessWidget {
  const ColorView({super.key});
  static String routeName = "ColorView";

  final List<CategoryItemModel> colors = const [
    CategoryItemModel(
        engName: "Red",
        japName: "Aka",
        imagePath: AppImages.colorRed,
        audioPath: 'assets/sounds/colors/red.wav'),
    CategoryItemModel(
        engName: "Black",
        japName: "Kuro",
        imagePath: AppImages.colorBlack,
        audioPath: 'assets/sounds/colors/black.wav'),
    CategoryItemModel(
        engName: "Brown",
        japName: "Cha",
        imagePath: AppImages.colorBrown,
        audioPath: 'assets/sounds/colors/brown.wav'),
    CategoryItemModel(
        engName: "Yellow",
        japName: "Kiiro",
        imagePath: AppImages.colorDustyYellow,
        audioPath: 'assets/sounds/colors/yellow.wav'),
    CategoryItemModel(
        engName: "Gray",
        japName: "Hai",
        imagePath: AppImages.colorGray,
        audioPath: 'assets/sounds/colors/gray.wav'),
    CategoryItemModel(
        engName: "Green",
        japName: "Midori",
        imagePath: AppImages.colorGreen,
        audioPath: 'assets/sounds/colors/green.wav'),
    CategoryItemModel(
        engName: "White",
        japName: "Shiro",
        imagePath: AppImages.colorWhite,
        audioPath: 'assets/sounds/colors/white.wav'),
    CategoryItemModel(
        engName: "Dusty Yellow",
        japName: "Kosa",
        imagePath: AppImages.colorDustyYellow,
        audioPath: 'assets/sounds/colors/dusty yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPerpileColor,
        appBar: const CustomAppBar(title: "Colors"),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const Divider(
            color: AppColors.kYellowColor,
            height: 1,
          ),
          itemBuilder: (context, index) => CategoryItem(item: colors[index]),
          itemCount: colors.length,
        ));
  }
}
