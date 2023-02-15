import 'package:flutter/material.dart';
import 'package:kizcutz/model/stores.dart';

class StoreThumbnail extends StatelessWidget {
  final Stores store;

  const StoreThumbnail({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          // STORE IMAGE WITH GRADIENT ABOVE IT
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        store.images[0],
                      ),
                      fit: BoxFit.cover)),
            ),
          ],
        ),

        // gradients overlay
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x00f5f5f5),
                    Color(0xfff5f5f5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
