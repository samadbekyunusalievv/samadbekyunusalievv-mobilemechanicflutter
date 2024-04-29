import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/authorization/MehanicFuncytion.dart';

class MehanicVerifyCode extends StatefulWidget {
  @override
  State<MehanicVerifyCode> createState() => _MehanicVerifyCodeState();
}

class _MehanicVerifyCodeState extends State<MehanicVerifyCode> {
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
                  "Verify Code",
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelText: "Code"),
                  ),
                ),
                Center(
                    child: Text(
                  "Resend Code",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                )),
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MehanicFunction(),
                        ));
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
