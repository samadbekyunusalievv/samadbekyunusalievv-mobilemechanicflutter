import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: const Color.fromRGBO(109, 72, 255, 1),
                    height: 150,
                    child: Stack(
                      children: <Widget>[
                        // Первое фото
                        Container(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset("assets/images/Frame.png")),
                        ),

                        // Уведомления (вверх на право)

                        // TextField
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 10, 30, 15),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    label: Icon(Icons.search)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
