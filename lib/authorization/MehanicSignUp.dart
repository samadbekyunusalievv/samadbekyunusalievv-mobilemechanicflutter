import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/authorization/MehanicAccaunt.dart';

class MehanicSignIn extends StatefulWidget {
  @override
  State<MehanicSignIn> createState() => _MehanicSignIn();
}

class _MehanicSignIn extends State<MehanicSignIn> {
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
                  width: 50,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fill information below",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: "Электронная почта"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: "Пароль"),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 60.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(109, 72, 255, 0.95),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(Size(350, 50)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont you have an account?",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MehanicAuthScreen(),
                            ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(109, 72, 255, 0.95),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
