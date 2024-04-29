import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/Mehanic/MehanicPage.dart';
import 'package:mobile_mechanich_hacaton_/Model/Entity/mehanic_entity.dart';

class MehanicLorem extends StatelessWidget {
  List<ServiceMehanicEntity> listMehanic;
  MehanicLorem({required this.listMehanic});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        padding: EdgeInsets.all(20),
        itemCount: listMehanic.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MehanicPage()));
            },
            child: Stack(
              children: [
                Container(
                    height: 250,
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/Rectangle 251.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ],
                    )),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.7)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text("4.8")
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 180,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.7)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/logo_2.png",
                          width: 25,
                          height: 25,
                        ),
                        Text(
                            listMehanic.elementAt(index).name ?? "Auto Service")
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 240,
                  top: 180,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.7)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/marker (1) 1.png",
                          width: 25,
                          height: 25,
                        ),
                        Text("  3.2km")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
