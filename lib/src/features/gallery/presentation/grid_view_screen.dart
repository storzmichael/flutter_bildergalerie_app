import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/data/gallery_data.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/presentation/gallery_card.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridPadding = 10;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: gridPadding,
              mainAxisSpacing: gridPadding,
            ),
            itemCount: galleryData.length,
            itemBuilder: (context, index) {
              return GalleryCard(
                galleryItem: galleryData[index],
              );
            }),
      ),
    );
  }
}
