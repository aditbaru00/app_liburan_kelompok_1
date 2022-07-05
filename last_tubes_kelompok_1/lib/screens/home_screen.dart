import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/bromo_screen.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/danatoba_screen.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/wakatobi_screen.dart';
import 'package:last_tubes_kelompok_1/screens/user/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var namaKu =FirebaseAuth.instance.currentUser.email.toString().split('@');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hai, " + namaKu[0] + "..."),
        actions: [
         InkWell(
           onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context)=> ProfilePage()),
             );
           },
           child: const CircleAvatar(
             radius: 25.0,
             backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/8ddL1kuoNUB5vUvgDVjYY3_6HwQcrg1K2fd_R8soD-e2QYj8fT9cfhfh3G0hnSruLKec"),
            ),
         ),
          const SizedBox(width: 18.0),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BromoScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1597553716923-45474a48fbe4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80"),
                                  fit: BoxFit.fitWidth
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Bromo",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WakatobiScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1602144586093-06c14ac4fe4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                  fit: BoxFit.fitWidth
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Wakatobi",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DanauTobaScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1601058497548-f247dfe349d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                  fit: BoxFit.fitWidth
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Danau Toba",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
