import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/Nav_Bar.dart';
import '../HOME.dart';
import '../Settings.dart';

class NutritionDryScreen extends StatelessWidget {
  NutritionDryScreen({Key? key}) : super(key: key);
  static String id = "NutritionDryScreen";
  List title = ['Breakfast', 'Snack', 'Lunch', 'Snack', 'Dinner'];
  List time = ["6:10 AM", '11Am', '12:3PM', '3:5PM', '6:8PM'];
  List detials = [
    'Greek yogurt with berries and granola',
    'Apple slices with almond butter',
    'Salmon salad with mixed greens and avocado',
    'Carrot sticks with hummus for this vegetable snack ',
    'Grilled chicken with roasted sweet potatoes '
  ];
  List titleImages = [
    'Greek yogurt',
    'almondbutter',
    'SALMON-AVOCADO-SALAD',
    'orig_carrot-sticks-with-hummus',
    'Grilled chicken with roasted sweet potatoes and green beans'
  ];
  List iconsImages = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  List juiceTitle = [
    'Rich in vitamin C, which can boost collagen production and support hair strength and elasticity.',
    'Rich in vitamin A, which can regulate sebum production and help keep the scalp and hair moisturized.',
    'Rich in biotin and iron, which are essential for healthy hair growth and carrying oxygen to the hair follicles.',
    'Rich in vitamin A and other antioxidants, which can protect against damage and support hair health.',
    'Rich in iron, which can support healthy hair growth and reduce dryness.',
    'Staying hydrated by drinking enough water can help to keep your scalp healthy',
  ];
  List juiceName = [
    'Orange juice',
    'Carrot juice',
    'Beet juice',
    'Spinach juice',
    'Pomegranate juice',
    'Water'
  ];
  List juiceImage = [
    'orange juice',
    'carrot  juic',
    'beet juice',
    'ginger juice',
    'Pomegranate juic',
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
                  'Here is your food schedule of your dry hair',
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
            height: 250,
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
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        time[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
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
            height: 40,
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
                                      fontSize: 13, color: Colors.black45),
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
