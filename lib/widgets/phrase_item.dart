import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/phrase_item_model.dart';

class PhrasesItem extends StatelessWidget {
  PhrasesItem({
    super.key,
    required this.phrase,
  });

  final PhraseItemModel phrase;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.all(18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  phrase.japPhrase,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  textAlign: TextAlign.start,
                  phrase.engPhrase,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () async {
                await player.play(AssetSource(phrase.audioPath));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
