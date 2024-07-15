import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/domain/gallery_item.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/presentation/details_screen.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(galleryItem: galleryItem), // show the selected card as detail
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12.0),
                    ),
                    child: Image.asset(
                      galleryItem.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(galleryItem.imageTitle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
