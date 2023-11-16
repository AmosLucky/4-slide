import 'package:flutter/material.dart';
import 'package:four_slide/card_grid.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List images = ["cat_1.jpg", "cat_2.jpg", "cat_3.jpg", "cat_4.jpg"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardGrid(
          images: images,
          onDrag: (index, position) {
            setState(() {
              ////////SWAPS THE DRAGED CARD

              images[images.indexOf("cat_4.jpg")] = images[index];
              images[index] = "cat_4.jpg";
              //incrementMoves();
            });
            print(index);
          }),
    );
  }
}
