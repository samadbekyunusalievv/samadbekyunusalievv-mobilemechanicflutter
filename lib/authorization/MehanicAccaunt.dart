import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/authorization/MehanicSignUp.dart';
import 'package:mobile_mechanich_hacaton_/authorization/MehanicVerifiCod.dart';

class MehanicAuthScreen extends StatefulWidget {
  @override
  _MehanicAuthScreenState createState() => _MehanicAuthScreenState();
}

class _MehanicAuthScreenState extends State<MehanicAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Image.asset(
                      "assets/images/image 17.png",
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
            Text("Fill information below"),
            SizedBox(
              height: 20,
            ),
            Expanded(
                key: _formKey,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                      child: TextFormField(
                        controller: _firstNameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Имя"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                      child: TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Фамилия"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Электронная почта"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                      child: TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Пароль"),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Подтверждение пароля"),
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
                            minimumSize:
                                MaterialStateProperty.all(Size(350, 50)),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MehanicVerifyCode()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MehanicSignIn(),
                                ));
                              },
                              child: Text(
                                "Sign In",
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
