import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  String ? imagePath;
  String label;

  SocialMediaCard({super.key, this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath ?? "",
              height: 40,
              width: 40,
            ),
            SizedBox(width: 15,),
            Text(label),
          ],
        ),
      ),
    );
  }
}
