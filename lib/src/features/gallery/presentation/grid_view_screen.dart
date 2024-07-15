import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/data/gallery_data.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/presentation/gallery_card.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
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
