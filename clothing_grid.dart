// clothing_grid.dart
import 'package:flutter/material.dart';

class ClothingGrid extends StatelessWidget {
  const ClothingGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10, // Ganti dengan jumlah gambar yang ingin ditampilkan
      itemBuilder: (context, index) {
        return Card(
          elevation: 2.0,
          child: Image.asset(
            'assets/clothing.jpg',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
