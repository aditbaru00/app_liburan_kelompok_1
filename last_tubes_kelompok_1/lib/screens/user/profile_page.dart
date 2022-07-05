import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/bromo_screen.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/danatoba_screen.dart';
import 'package:last_tubes_kelompok_1/screens/destination/destination_screen/wakatobi_screen.dart';
import 'package:last_tubes_kelompok_1/screens/user/edit_profile_page.dart';
import 'package:last_tubes_kelompok_1/screens/user/model/user.dart';
import 'package:last_tubes_kelompok_1/screens/user/utils/user_preferences.dart';
import 'package:last_tubes_kelompok_1/screens/user/widget/appbar_widget.dart';
import 'package:last_tubes_kelompok_1/screens/user/widget/profile_widget.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          toppart(),
          /*
          ProfileWidget(
            imagePath1: user.imagePath1,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          */
          const SizedBox(height: 84),
          buildName(user),
          const SizedBox(height: 16),
          buildAbout(user),
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
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          const SizedBox(height: 6),
          Text(
            user.title,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 6),
        ],
      );
  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 12),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 6),
          ],
        ),
      );

  Widget toppart() {
    const user = UserPreferences.myUser;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 0),
          child: Image.network(
            user.imagePath2,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 125,
          child: ProfileWidget(
            imagePath1: user.imagePath1,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
        ),
      ],
    );
  }

}
