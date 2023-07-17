import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/QA-Test/HairType.dart';
import '../onBoarding/boardingButton.dart';

class testOfHairType extends StatelessWidget {
  const testOfHairType({Key? key}) : super(key: key);

  Widget _buildImageCard({required String image, required String title}) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.to(
                () => HairType(),
                transition: Transition.leftToRight,
                duration: const Duration(milliseconds: 500),
              );
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          Column(
            children: [
              _buildImageCard(
                image: 'images/icons/oily.jpeg',
                title:
                    'Signs of an oily scalp are the hair getting oily quickly after washing it, dead skin cell buildup, acne, and dandruff. Despite common belief, dandruff happens when too much oil is on the scalp causing skin cells to build up and shed.',
              ),
              const SizedBox(height: 20),
              _buildImageCard(
                image: 'images/icons/normal.jpeg',
                title:
                    'A normal scalp typically produces the right amount of sebum - not an excessive amount of sebum causing the scalp to be oily or an underwhelming amount causing the scalp to be dry. This type of scalp has the right amount of hair sebum and an ideal pH level.',
              ),
              const SizedBox(height: 20),
              _buildImageCard(
                image: 'images/icons/dry.jpeg',
                title:
                    'If the skin on your head is itchy and flaking, you may have dry scalp. The condition occurs when your scalp loses too much moisture.',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
