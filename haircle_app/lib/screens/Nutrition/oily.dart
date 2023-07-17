import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/Nav_Bar.dart';
import '../HOME.dart';

class OilyHairScreen extends StatelessWidget {
  OilyHairScreen({Key? key}) : super(key: key);
  static String id = "OilyHairScreen";

  List title = [
    'Omega-3  Acids',
    'Vitamin A',
    'B Vitamins',
    'Zinc',
  ];
  List time = ["6:10 AM", '11Am', '12:3PM', '3:5PM'];
  List detials = [
    'Fish types contain omega 3 that help reduce scalp inflammation and healthy hair growth',
    ' Sweet potato, caroots and Spanish have vitamin A which help sebum production',
    'Eggs, nuts and leafy greens contain vitamin B that help improve your scalp and hair health.',
    'Beef, pumpkin and oyster contain zinc that is important for regulating produced oil scalp..',
  ];
  List titleImages = ['omega-3', 'vitamin a', 'B Vitamins', 'Zinc'];
  List iconsImages = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  List juiceTitle = [
    'Rich in zinc and other antioxidants, which can help regulate sebum production and protect against damage.',
    'Rich in vitamin C and other antioxidants, which can protect against damage and support hair health.',
    'Rich in vitamin A, which can support healthy hair growth and help keep the scalp and hair moisturized. ',
    'Rich in omega-3 fatty acids, which can improve hair texture and reduce inflammation.',
    'Staying hydrated by drinking enough water can help to keep your scalp healthy  '
  ];
  List juiceName = [
    'Ginger juice',
    'Carrot juice',
    'Wheatgrass juice',
    'Beet juice',
    'Water'
  ];
  List juiceImage = [
    'ging juice',
    'carrot  juic',
    'Wheatgrass juice',
    'beet juice',
    'water'
  ];
  final ItemTitle =
      TextStyle(fontWeight: FontWeight.bold, color: kColor2, fontSize: 18);
  Widget mealPlan() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Let's Check Food ",
                    style: TextStyle(
                      color: kColor2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Text('Nutrition & Drinks',
                    style: TextStyle(
                      color: kColor2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Here is your food schedule of your oily hair',
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: iconsImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  height: 150,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/icons/${iconsImages[index]}.png",
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 260,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: titleImages.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: 220,
                          width: 190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    title[index],
                                    style: ItemTitle,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    detials[index],
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))),
                    ),
                    Positioned(
                      left: 35,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "images/icons/${titleImages[index]}.png",
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: juiceTitle.length,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            left: 40, top: 10, bottom: 10, right: 20),
                        child: Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width / 1.17,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  juiceName[index],
                                  style: ItemTitle,
                                ),
                                Text(
                                  juiceTitle[index],
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "images/icons/${juiceImage[index]}.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HOME_PAGE.id);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
      ),
      backgroundColor: Colors.white,
      body: mealPlan(),
      bottomNavigationBar: Nav_Bar(),
    );
  }
}
