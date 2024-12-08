import 'package:flutter/material.dart';
import 'package:tuko_app/views/color_view/color_view.dart';
import 'package:tuko_app/views/home_view/home_view.dart';
import 'package:tuko_app/views/number_view/number_view.dart';
import 'package:tuko_app/views/phrases_view/phrases_view.dart';

import '../views/family_view/family_view.dart';

Map<String, Widget Function(BuildContext)> appRouter = {
  HomeView.routeName: (context) => const HomeView(),
  ColorView.routeName: (contex) => const ColorView(),
  FamilyView.routeName: (contex) => const FamilyView(),
  NumberView.routeName: (contex) => const NumberView(),
  PhrasesView.routeName: (contex) => const PhrasesView(),
};
