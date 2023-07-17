import 'package:flutter/material.dart';
import '../constants.dart';

class FeedBack extends StatelessWidget {
  FeedBack({Key? key}) : super(key: key);
  final Color firstcolor = kColor;
  final Color secondcolor = kColor2;
  final msgcontroller = TextEditingController();
  static String id = "feedback";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 310,
                    decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [firstcolor, secondcolor]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.pink,
                              blurRadius: 12,
                              offset: Offset(0, 6))
                        ]),
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 25,
                  child: Text(
                    'FeedBack',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Positioned(
                  top: 80,
                  left: 25,
                  child: Text(
                    "welcome to our feedback form",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Positioned(
                  top: 105,
                  left: 35,
                  child: Text(
                    'please leave your feedback ',
                    style: TextStyle(fontSize: 18.0, color: Colors.black45),
                  ),
                ),
                const Positioned(
                  top: 140,
                  left: 25,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      foregroundImage: AssetImage('')),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "please share your experience so far",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(69, 255, 212, 200),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextField(
                            controller: msgcontroller,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                            maxLines: 10,
                            decoration: const InputDecoration(
                                errorText: 'Must Not Be empty',
                                errorStyle: TextStyle(color: Colors.black38),
                                hintText: 'write your feedback here...'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'How would you rate Our APP?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        5,
                        (index) => IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border_outlined,
                              color: Colors.yellow,
                              size: 32,
                            )))),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: buttoncolor),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Send Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'fonts/pswald-bold.ttf',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    RotatedBox(
                      quarterTurns: 6,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          width: double.infinity,
                          height: 310,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [firstcolor, secondcolor]),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.pink,
                                    blurRadius: 12,
                                    offset: Offset(0, 6))
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 300);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
