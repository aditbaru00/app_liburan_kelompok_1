import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_tubes_kelompok_1/screens/user/model/user.dart';
import 'package:last_tubes_kelompok_1/screens/user/user_services.dart';
import 'package:last_tubes_kelompok_1/screens/user/utils/user_preferences.dart';
import 'package:last_tubes_kelompok_1/screens/user/widget/appbar_widget.dart';
import 'package:last_tubes_kelompok_1/screens/user/widget/profile_widget.dart';
import 'package:last_tubes_kelompok_1/screens/user/widget/textfield_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  File image;

  Future pickImageGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = await saveImagePermanently(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Gagal mengambil gambar: $e');
    }
  }

  Future pickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = await saveImagePermanently(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Gagal mengambil gambar: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(user.imagePath1);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            ProfileWidget(
              imagePath1: user.imagePath1,
              isEdit: true,
              onClicked: () {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Nama Lengkap',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Title',
              text: user.title,
              onChanged: (title) {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: 'Password',
              text: user.pass,
              onChanged: (pass) {},
            ),
            const SizedBox(height: 20),
            buttoncamera(),
            buttongallery(),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 60,
                width: 210,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserServices()));
                  },
                  icon: Icon(Icons.logout),
                  label: Text('Logout'),
                  color: Colors.grey[350],
                ),
              ),
            ),
          ],
        ),
      );

  Widget buttoncamera() =>
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          height: 60,
          width: 210,
          child: RaisedButton.icon(
            onPressed: () => pickImageCamera(),
            icon: Icon(Icons.camera),
            label: Text('Ambil foto dari kamera'),
            color: Colors.grey[350],
          ),
        ),
      );

  Widget buttongallery() =>
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          height: 60,
          width: 210,
          child: RaisedButton.icon(
            onPressed: () => pickImageGallery(),
            icon: Icon(Icons.photo),
            label: Text('Ambil foto dari galeri'),
            color: Colors.grey[350],
          ),
        ),
      );

}