import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/images/Ellipse_15.png"),
            backgroundColor: Colors.white,
            // Замените на свой путь к изображению аватара
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Имя ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Фамилия',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'example@example.com',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 400),
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
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (BuildContext context) => MainNavigator(),
                  // ));
                },
                child: Text(
                  "Log out",
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}
