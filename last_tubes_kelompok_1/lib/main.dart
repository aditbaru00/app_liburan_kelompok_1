import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/app/liburan_app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LiburanApp());
}