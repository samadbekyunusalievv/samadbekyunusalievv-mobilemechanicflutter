import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/HomePage.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/MainNavigator.dart';

class MehanicAddPhoto extends StatelessWidget {
  const MehanicAddPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: true,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(""),
                  icon: Image.asset(
                    "assets/images/image 17.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Please write the code just we have send!",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView(
            children: [
              ProfileScreen(),
              //BannerScreen(),

              SizedBox(height: 16.0),
              // Баннер фото
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://via.placeholder.com/400'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(109, 72, 255, 0.95),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(Size(350, 50)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MainNavigator(),
                      ));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: _image != null ? FileImage(_image!) : null,
            child: _image == null
                ? Icon(
                    Icons.person,
                    size: 80,
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(Size(800, 50)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                onPressed: getImage,
                child: Text(
                  "Add Banner",
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}

// class BannerScreen extends StatefulWidget {
//   @override
//   _BannerScreenState createState() => _BannerScreenState();
// }

// class _BannerScreenState extends State<BannerScreen> {
//   late File _imageFile;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _getImageFromGallery() async {
//     final pickedFile = await _picker.getImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _imageFile = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           width: 300,
//           height: 150,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.grey[300], // Цвет заднего фона баннера
//             image: _imageFile != null
//                 ? DecorationImage(
//                     image: FileImage(_imageFile),
//                     fit: BoxFit.cover,
//                   )
//                 : null,
//           ),
//           child: _imageFile == null
//               ? Center(
//                   child: Text(
//                     'No Image',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 )
//               : null,
//         ),
//         ElevatedButton(
//           onPressed: _getImageFromGallery,
//           child: Text('Change Banner Photo'),
//         ),
//       ],
//     ));
//   }
// }
