import 'package:flutter/material.dart';
import 'package:tuko_app/models/phrase_item_model.dart';
import 'package:tuko_app/utilities/app_colors.dart';
import 'package:tuko_app/widgets/custom_app_bar.dart';
import 'package:tuko_app/widgets/phrase_item.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  static String routeName = "PhrasesView";

  final List<PhraseItemModel> phrases = const [
    PhraseItemModel(
        engPhrase: "don't forget to subscribe",
        japPhrase: "Kōdoku suru koto o wasurenaide kudasai",
        audioPath: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    PhraseItemModel(
        engPhrase: "how are you feeling",
        japPhrase: "Go kibun wa ikagadesu ka.",
        audioPath: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    PhraseItemModel(
        engPhrase: "i love animal",
        japPhrase: "Watashi wa dōbutsu ga daisukidesu",
        audioPath: 'assets/sounds/phrases/i_love_anime.wav'),
    PhraseItemModel(
        engPhrase: "i love programming",
        japPhrase: "Watashi wa puroguramingu ga daisukidesu",
        audioPath: 'assets/sounds/phrases/i_love_programming.wav'),
    PhraseItemModel(
        engPhrase: "programming is easy",
        japPhrase: "Puroguramingu wa kantandesu",
        audioPath: 'assets/sounds/phrases/programming_is_easy.wav'),
    PhraseItemModel(
        engPhrase: "what is your name",
        japPhrase: "Anata no namae wa nandesuka",
        audioPath: 'assets/sounds/phrases/what_is_your_name.wav'),
    PhraseItemModel(
        engPhrase: "where are you going",
        japPhrase: "Doko ni iku no",
        audioPath: 'assets/sounds/phrases/where_are_you_going.wav'),
    PhraseItemModel(
        engPhrase: "yes i'm coming",
        japPhrase: "Hai, ikimasu",
        audioPath: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSkeyBlueColor,
      appBar: const CustomAppBar(title: "Phrases"),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) =>
            PhrasesItem(phrase: phrases[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: AppColors.kYellowColor,
          height: 1,
        ),
        itemCount: phrases.length,
      ),
    );
  }
}
