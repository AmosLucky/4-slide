import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  Function onDrag;
  List images;
  CardGrid({
    super.key,
    required this.onDrag,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (ctx, i) {
            return GestureDetector(
              onHorizontalDragStart: (dragDownDetail) {
                onDrag(i, "h");
                //print(images[i]);
              },
              onVerticalDragStart: (dragDownDetails) {
                onDrag(i, "v");
              },
              child: images[i] != "cat_4.jpg"
                  ? Container(
                      // ignore: prefer_interpolation_to_compose_strings
                      child: Image.asset(
                        "assets/images/" + images[i],
                        fit: BoxFit.fill,
                      ),
                    )
                  : SizedBox.shrink(),
            );
          }),
    );
  }
}
