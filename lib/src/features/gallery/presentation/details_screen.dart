import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_app/src/core/presentation/varibals.dart';
import 'package:flutter_bildergalerie_app/src/features/gallery/domain/gallery_item.dart';

class DetailsScreen extends StatelessWidget {
  final GalleryItem galleryItem;

  const DetailsScreen({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset(
                    galleryItem.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  galleryItem.imageTitle,
                  style: TextStyle(fontSize: detailTitleFontSize),
                ),
                const SizedBox(height: 8),
                Text(
                  galleryItem.imageDate,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(galleryItem.imageDescription),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
