import 'package:flutter/material.dart';
import 'package:haircle_app/screens/HOME.dart';
import '../../constants.dart';
import '../../widgets/Nav_Bar.dart';

class BadHabitsApp extends StatelessWidget {
  static String id = 'BadHabitsApp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Nav_Bar(),
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
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Stop",
                        style: TextStyle(
                          color: kColor2,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.warning_amber_rounded,
                      size: 60,
                      color: Colors.red,
                    )
                  ],
                ),
                Text('Damaging Your Hair',
                    style: TextStyle(
                      color: kColor2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Overwashing',
                'Washing your hair too frequently can strip it of its natural oils and lead to dryness and breakage.',
                Icons.bathtub_outlined),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Heat Styling',
                'Using hot tools like flat irons, curling irons, and hair dryers can damage your hair and make it more prone to breakage.',
                Icons.whatshot),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Tight Hairstyles',
                'Wearing hairstyles that are too tight, such as braids, buns, and ponytails, can put stress on your hair and lead to breakage and thinning.',
                Icons.grain),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Not Protecting Your Hair from the Sun',
                'Exposure to the sun\'s harmful UV rays can damage your hair and cause it to become dry and brittle.',
                Icons.wb_sunny_outlined),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Skipping Regular Trims',
                'Skipping regular haircuts can lead to split ends and make your hair look dull and lifeless.',
                Icons.content_cut),
            SizedBox(
              height: 20,
            ),
            _buildBadHabitItem(
                'Poor Diet',
                'Eating a poor diet that lacks nutrients like protein, iron, and vitamins can lead to weak and brittle hair.',
                Icons.fastfood),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBadHabitItem(String title, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 2,
              color: Colors.black12,
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.red,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: buttoncolor),
              ),
            ),
            subtitle: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
