import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/home_screen.dart';
import 'package:last_tubes_kelompok_1/screens/login/login_screen.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen();

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // mengecek apakah ada user terdaftar, kalau tidak ada maka hanya akan menetap di layar loginScreen(), atau semisal ada
          // dilempar ke homeScreen()
          if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}

