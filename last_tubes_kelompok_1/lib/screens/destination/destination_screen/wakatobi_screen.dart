import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_map/wakatobi_map.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_video/wakatobi_video.dart';

class WakatobiScreen extends StatefulWidget {
  const WakatobiScreen();

  @override
  State<WakatobiScreen> createState() => _WakatobiScreenState();
}

class _WakatobiScreenState extends State<WakatobiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Wakatobi"),
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
                          'https://images.unsplash.com/photo-1602144586093-06c14ac4fe4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                        ),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        bottom: 16,
                        right: 16,
                        left: 16,
                        child: Text(
                          'Wakatobi',
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
                      'Taman Nasional Wakatobi adalah salah satu taman nasional di Indonesia. Letaknya di Kabupaten Wakatobi, Sulawesi Tenggara. Taman nasional ini ditetapkan pada tanggal 19 Agustus tahun 2002 berdasarkan Surat Keputusan Menteri kehutanan Nomor 7661/Kpts-II/2002. Lahan yang dipakai seluas 1,39 juta hektare. Sebelumnya, taman nasional ini juga telah ditetapkan oleh Surat Keputusan Menteri Kehutanan Nomor 393/Kpts-V/1996.',
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
                            MaterialPageRoute(builder: (context) => const WakatobiMap()),
                          );
                        },
                      ),
                      TextButton(
                        child: const Text('Lihat Video'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WakatobiVideo()),
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
