import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'clothing_grid.dart'; // Import file clothing_grid.dart
import 'formal_page.dart';
import 'kasual_page.dart';
import 'vintage_page.dart';



class MyApp {
  const MyApp();
}

// ... (code lainnya tetap sama)

class HalamanJelajah extends StatelessWidget {
  const HalamanJelajah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Koleksi'),
      ),
      body: const Center(
        child: Text('Ini adalah tampilan Halaman Lihat Koleksi'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Formal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Kasual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Vintage',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            GoRouter.of(context).go('/formal');
          } else if (index == 1) {
            GoRouter.of(context).go('/kasual');
          } else if (index == 2) {
            GoRouter.of(context).go('/vintage');
          }
        },
      ),
    );
  }
}

// ... (code lainnya tetap sama)

class FormalPage extends StatelessWidget {
  const FormalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Formal'),
      ),
      body: ClothingGrid(), // Tambahkan ClothingGrid di dalam body FormalPage
    );
  }
}

// ... (code lainnya tetap sama)

class KasualPage extends StatelessWidget {
  const KasualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kasual'),
      ),
      body: ClothingGrid(), // Tambahkan ClothingGrid di dalam body KasualPage
    );
  }
}

// ... (code lainnya tetap sama)

class VintagePage extends StatelessWidget {
  const VintagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Vintage'),
      ),
      body: ClothingGrid(), // Tambahkan ClothingGrid di dalam body VintagePage
    );
  }
}

