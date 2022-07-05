import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:last_tubes_kelompok_1/screens/user/edit_profile_page.dart';

AppBar buildAppBar(BuildContext context) {
  const icon = CupertinoIcons.gear;

  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.deepPurple,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfilePage()));
        },
        icon: const Icon(icon),
      ),
    ],
  );
}
