import 'package:flutter/material.dart';

class MehanicPage extends StatefulWidget {
  @override
  State<MehanicPage> createState() => _MehanicPageState();
}

class _MehanicPageState extends State<MehanicPage> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Фотография
            Stack(children: [
              Image.asset(
                "assets/images/remont_auto.png",
                // height: 20,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Image.asset(
                    "assets/images/image 17.png",
                    color: Colors.white,
                  ))
            ]),
            // Текст
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mehanic',
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.asset(
                    "assets/images/Group 33.png",
                    width: 150,
                    height: 50,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Mobile Service"),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Panfilov 123, Bishkek, Kyrgyzstan"),
            ),
            // Две кнопки
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: select == true
                            ? Border(bottom: BorderSide(width: 2))
                            : null),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          select = true;
                        });
                      },
                      child: Text('About'),
                    ),
                  ),
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: select == false
                            ? Border(bottom: BorderSide(width: 2))
                            : null),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          select = false;
                        });
                      },
                      child: Text('Rewiev'),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("About"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("Service Provider"),
              ),
            ),
            // Текст и аватарка с кнопкой
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        'assets/images/Ellipse 9.png'), // Замените это на вашу аватарку
                  ),
                ),
                Column(
                  children: [
                    Text("Ramazan Abduraimov"),
                    Text("Service Provider")
                  ],
                ),
                SizedBox(width: 70),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/telephone 1.png")),
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/messenger 1.png")),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(109, 72, 255, 0.95),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize: MaterialStateProperty.all(Size(350, 50)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Order Now",
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
