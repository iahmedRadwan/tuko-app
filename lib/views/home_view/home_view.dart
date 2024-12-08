import 'package:flutter/material.dart';
import 'package:tuko_app/utilities/app_colors.dart';
import 'package:tuko_app/views/color_view/color_view.dart';
import 'package:tuko_app/views/family_view/family_view.dart';
import 'package:tuko_app/views/number_view/number_view.dart';
import 'package:tuko_app/views/phrases_view/phrases_view.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/tuko_home_category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Tuko',
      ),
      body: Column(
        children: [
          TukoCategoryItem(
            itemTitle: 'Numbers',
            itemColor: AppColors.kOrangeColor,
            onTap: () {
              Navigator.pushNamed(context, NumberView.routeName);
            },
          ),
          TukoCategoryItem(
            itemTitle: 'FamilyMember',
            itemColor: AppColors.kGreenColor,
            onTap: () {
              Navigator.pushNamed(context, FamilyView.routeName);
            },
          ),
          TukoCategoryItem(
            itemTitle: 'Colors',
            itemColor: AppColors.kPerpileColor,
            onTap: () {
              Navigator.pushNamed(context, ColorView.routeName);
            },
          ),
          TukoCategoryItem(
            itemTitle: 'Phrases',
            itemColor: AppColors.kSkeyBlueColor,
            onTap: () {
              Navigator.pushNamed(context, PhrasesView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
