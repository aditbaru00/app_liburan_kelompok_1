import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/login/auth_screen.dart';


class LiburanApp extends StatelessWidget {
  const LiburanApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
