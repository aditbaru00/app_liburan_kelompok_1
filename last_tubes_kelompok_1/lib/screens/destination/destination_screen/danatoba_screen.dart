import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_map/danautoba_screen.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_video/danautoba_video.dart';

class DanauTobaScreen extends StatefulWidget {
  const DanauTobaScreen();

  @override
  State<DanauTobaScreen> createState() => _DanauTobaScreenState();
}

class _DanauTobaScreenState extends State<DanauTobaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Danau Toba"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Ink.image(
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1601058497548-f247dfe349d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                        ),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        bottom: 16,
                        right: 16,
                        left: 16,
                        child: Text(
                          'Danau Toba',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                    child: const Text(
                      'Danau Toba (Aksara Batak Toba : ᯖᯀᯬᯖᯬᯅ, translit. Tao Toba) adalah danau alami berukuran besar di Indonesia yang berada di kaldera Gunung Supervulkan. Danau ini memiliki panjang 100 kilometer (62 mil), lebar 30 kilometer (19 mi), dan kedalaman 1.666 meter (5.466 ft).',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        child: const Text('Lihat Peta'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DanautobaMap()),
                          );
                        },
                      ),
                      TextButton(
                        child: const Text('Lihat Video'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DanautobaVideo()),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
