import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/authorization/Create_Account.dart';
import 'package:mobile_mechanich_hacaton_/authorization/MehanicAccaunt.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/Converted_3.png",
              width: 250,
              height: 250,
            ),
            SizedBox(
              height: 30,
            ),
            Text("Have you ever needed to take your "),
            Text("vehicle into the repair shop, but"),
            Text(" didn’t have the time?"),
            Padding(
              padding: const EdgeInsets.only(top: 180),
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AuthScreen(),
                    ));
                  },
                  child: Text(
                    "Client",
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(255, 72, 0, 0.83),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(Size(350, 50)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MehanicAuthScreen(),
                  ));
                },
                child: Text(
                  "Mechanic",
                )),
          ],
        ),
      ),
    );
  }
}
