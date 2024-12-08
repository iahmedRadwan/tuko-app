import 'package:flutter/material.dart';
import 'package:tuko_app/utilities/app_colors.dart';
import 'package:tuko_app/utilities/app_images.dart';
import 'package:tuko_app/models/category_item_model.dart';
import 'package:tuko_app/widgets/custom_app_bar.dart';

import '../../widgets/category_item.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});
  static String routeName = "NumberView";
  final List<CategoryItemModel> numbers = const [
    CategoryItemModel(
        engName: "One",
        japName: "ichi",
        imagePath: AppImages.numberOne,
        audioPath: 'assets/sounds/numbers/number_one_sound.mp3'),
    CategoryItemModel(
        engName: "Two",
        japName: "Ni",
        imagePath: AppImages.numberTwo,
        audioPath: 'assets/sounds/numbers/number_two_sound.mp3'),
    CategoryItemModel(
        engName: "Three",
        japName: "San",
        imagePath: AppImages.numberThree,
        audioPath: 'assets/sounds/numbers/number_three_sound.mp3'),
    CategoryItemModel(
        engName: "Four",
        japName: "Shi",
        imagePath: AppImages.numberFour,
        audioPath: 'assets/sounds/numbers/number_four_sound.mp3'),
    CategoryItemModel(
        engName: "Five",
        japName: "Go",
        imagePath: AppImages.numberFive,
        audioPath: 'assets/sounds/numbers/number_five_sound.mp3'),
    CategoryItemModel(
        engName: "Six",
        japName: "Roku",
        imagePath: AppImages.numberSix,
        audioPath: 'assets/sounds/numbers/number_six_sound.mp3'),
    CategoryItemModel(
        engName: "Seven",
        japName: "Sebun",
        imagePath: AppImages.numberSeven,
        audioPath: 'assets/sounds/numbers/number_seven_sound.mp3'),
    CategoryItemModel(
        engName: "Eight",
        japName: "hachi",
        imagePath: AppImages.numberEight,
        audioPath: 'assets/sounds/numbers/number_eight_sound.mp3'),
    CategoryItemModel(
        engName: "Nine",
        japName: "Kyū",
        imagePath: AppImages.numberNine,
        audioPath: 'assets/sounds/numbers/number_nine_sound.mp3'),
    CategoryItemModel(
        engName: "Ten",
        japName: "juu",
        imagePath: AppImages.numberTen,
        audioPath: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kOrangeColor,
        appBar: const CustomAppBar(title: "Numbers"),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const Divider(
            color: AppColors.kYellowColor,
            height: 1,
          ),
          itemBuilder: (context, index) => CategoryItem(item: numbers[index]),
          itemCount: numbers.length,
        ));
  }
}
