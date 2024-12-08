import 'package:flutter/material.dart';
import 'package:tuko_app/widgets/custom_app_bar.dart';

import '../../models/category_item_model.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../widgets/category_item.dart';

class FamilyView extends StatelessWidget {
  const FamilyView({super.key});
  static String routeName = "FamilyView";

  final List<CategoryItemModel> family = const [
    CategoryItemModel(
        engName: "Father",
        japName: "chichi",
        imagePath: AppImages.familyFather,
        audioPath: 'assets/sounds/family_members/father.wav'),
    CategoryItemModel(
        engName: "Mother",
        japName: "haha",
        imagePath: AppImages.familyMother,
        audioPath: 'assets/sounds/family_members/mother.wav'),
    CategoryItemModel(
        engName: "Grandfather",
        japName: "sofu",
        imagePath: AppImages.familyGrandFather,
        audioPath: 'assets/sounds/family_members/grand father.wav'),
    CategoryItemModel(
        engName: "Grandmother",
        japName: "sobo",
        imagePath: AppImages.familyGrandMother,
        audioPath: 'assets/sounds/family_members/grand mother.wav'),
    CategoryItemModel(
        engName: "Son",
        japName: "musuko",
        imagePath: AppImages.familySon,
        audioPath: 'assets/sounds/family_members/son.wav'),
    CategoryItemModel(
        engName: "Daughter",
        japName: "musume",
        imagePath: AppImages.familyDaughter,
        audioPath: 'assets/sounds/family_members/daughter.wav'),
    CategoryItemModel(
        engName: "Older Brother",
        japName: "ani",
        imagePath: AppImages.familyOlderBrother,
        audioPath: 'assets/sounds/family_members/older bother.wav'),
    CategoryItemModel(
        engName: "Older Sister",
        japName: "ane",
        imagePath: AppImages.familyOlderSister,
        audioPath: 'assets/sounds/family_members/older sister.wav'),
    CategoryItemModel(
        engName: "Younger Brother",
        japName: "otouto",
        imagePath: AppImages.familyYoungerBrother,
        audioPath: 'assets/sounds/family_members/younger brohter.wav'),
    CategoryItemModel(
        engName: "Younger Sister",
        japName: "imouto",
        imagePath: AppImages.familyYoungerSister,
        audioPath: 'assets/sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kGreenColor,
        appBar: const CustomAppBar(title: "Family"),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const Divider(
            color: AppColors.kYellowColor,
            height: 1,
          ),
          itemBuilder: (context, index) => CategoryItem(item: family[index]),
          itemCount: family.length,
        ));
  }
}
