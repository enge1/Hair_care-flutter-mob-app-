import 'package:flutter/material.dart';
import 'package:haircle_app/screens/HOME.dart';
import 'package:haircle_app/widgets/Nav_Bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class Articles extends StatelessWidget {
  static String id = 'Articles';
  final List<Article> _articles = [
    Article(
        title: '10 Hair Care Tips for Healthy and Beautiful Hair',
        link:
            'https://www.healthline.com/health/beauty-skin-care/hair-care-tips'),
    Article(
        title: 'The Ultimate Hair Care Guide for All Hair Types',
        link:
            'https://www.cosmopolitan.com/style-beauty/beauty/a32216513/hair-care-guide-all-hair-types/'),
    Article(
        title: 'The Best Hair Care Products of 2021',
        link:
            'https://www.harpersbazaar.com/beauty/hair/g34818777/best-hair-care-products/'),
    Article(
        title: 'Hair Care Myths Debunked',
        link: 'https://www.webmd.com/beauty/features/hair-care-myths-debunked'),
    Article(
        title: 'How to Take Care of Your Hair: 15 Tips for Every Hair Type',
        link:
            'https://www.allure.com/story/how-to-take-care-of-your-hair-tips-every-hair-type'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HOME_PAGE.id);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            )),
      ),
      bottomNavigationBar: Nav_Bar(),
      body: ListView.builder(
        itemCount: _articles.length + 1, // add one for the card
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent),
              margin: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Bad hair days are a bummer; that's a beauty truth. But they are no joke: According to a Redbook poll, 74% of women say a bad hair day makes them feel less confident. So, when your hair is in good shape, it undoubtedly looks better, and the chances of that happening are far less likely— or at least less frequent.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          } else {
            final articleIndex = index - 1; // subtract one for the card
            return ListTile(
              title: Text(_articles[articleIndex].title),
              leading: Icon(Icons.link),
              onTap: () => launchURL(_articles[articleIndex].link),
            );
          }
        },
      ),
    );
  }

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class Article {
  final String title;
  final String link;

  Article({required this.title, required this.link});
}
