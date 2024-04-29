import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_mechanich_hacaton_/Mehanic/Lorem.dart';
import 'package:mobile_mechanich_hacaton_/Mehanic/MehanicPage.dart';
import 'package:mobile_mechanich_hacaton_/Model/Entity/mehanic_entity.dart';
import 'package:mobile_mechanich_hacaton_/Servis/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedLocation = 'Bishkek, Kyrgyzstan';

  List<String> locations = [
    'Bishkek, Kyrgyzstan',
    'Москва',
    'Париж',
    'Нью-Йорк'
  ];
  List<ServiceAitem> servictes = [
    ServiceAitem(
      name: "Дөңгөлөк",
      imageName: "wheel 1",
      tamga: "a",
    ),
    ServiceAitem(
      name: "Диагностика",
      imageName: "laptop 1",
      tamga: "b",
    ),
    ServiceAitem(
      name: "Электрик",
      imageName: "electric-power 1",
      tamga: "c",
    ),
    ServiceAitem(
      name: "Бойокчу",
      imageName: "paint-roller 1",
      tamga: "d",
    ),
    ServiceAitem(
      name: "Май ",
      imageName: "car-oil 1",
      tamga: "e",
    ),
    ServiceAitem(
      name: "Руль",
      imageName: "steering-wheel 1",
      tamga: "f",
    ),
    ServiceAitem(
      name: "Трансмиссия",
      imageName: "manual-transmission 1",
      tamga: "g",
    ),
    ServiceAitem(
      name: "Бензин",
      imageName: "gas-station 1",
      tamga: "h",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {},
      child: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(109, 72, 255, 1),
                height: 250,
                child: Stack(
                  children: <Widget>[
                    // Первое фото
                    Container(
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset("assets/images/Frame.png")),
                    ),
                    // Локация города Бишкек (вверх на лево)
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/lokation.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              DropdownButton<String>(
                                value: selectedLocation,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedLocation = newValue!;
                                  });
                                },
                                items: locations.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Уведомления (вверх на право)
                    Positioned(
                      top: 20.0,
                      right: 20.0,
                      child: Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/notification 1.png",
                              width: 30,
                              height: 30,
                            )),
                      ),
                    ),
                    // TextField
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recomended",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  height: 220.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  onPageChanged: (index, reason) {},
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MehanicPage()));
                    },
                    child: Stack(
                      children: [
                        Container(
                            height: 200,
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
                          top: 140,
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
                                Text("   Auto service")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 200,
                          top: 140,
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Services",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Wrap(
                children: [
                  for (int i = 0; i < servictes.length; i++)
                    buttonCol(
                      serviceAitem: servictes.elementAt(i),
                      context: context,
                    )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget buttonCol({
    required ServiceAitem serviceAitem,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        serviceAitem.getMehanicServiceScreen(context);
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]),
              height: 80,
              width: 80,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/${serviceAitem.imageName}.png",
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(serviceAitem.name),
          ],
        ),
      ),
    );
  }
}

class ServiceAitem {
  String name;
  String imageName;
  String tamga;
  List<ServiceMehanicEntity> mehanicEntity = [];

  ServiceAitem({
    required this.name,
    required this.imageName,
    required this.tamga,
  });

  Future<void> getMehanicServiceScreen(BuildContext context) async {
    mehanicEntity = await ApiService.getListMehanic(tamga: tamga);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MehanicLorem(listMehanic: mehanicEntity)));
  }
}
