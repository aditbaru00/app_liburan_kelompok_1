import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_map/bromo_map.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_video/bromo_video.dart';

class BromoScreen extends StatefulWidget {
  const BromoScreen();

  @override
  State<BromoScreen> createState() => _BromoScreenState();
}

class _BromoScreenState extends State<BromoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Bromo"),
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
                          'https://images.unsplash.com/photo-1597553716923-45474a48fbe4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80',
                        ),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        bottom: 16,
                        right: 16,
                        left: 16,
                        child: Text(
                          'Gunung Bromo',
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
                      'Gunung Bromo atau dalam bahasa Tengger dieja "Brama", juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur.',
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
                            MaterialPageRoute(builder: (context) => const BromoMap()),
                          );
                        },
                      ),
                      TextButton(
                        child: const Text('Lihat Video'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const BromoVideo()),
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
