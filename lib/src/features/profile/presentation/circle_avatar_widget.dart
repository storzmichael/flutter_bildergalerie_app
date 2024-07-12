import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String defaultImageUrl = 'https://via.placeholder.com/150';

  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90,
      backgroundImage: NetworkImage(defaultImageUrl),
      onBackgroundImageError: (exception, stackTrace) {},
      child: const Icon(
        Icons.person,
        size: 70,
        color: Color.fromARGB(255, 173, 140, 140),
      ),
    );
  }
}
