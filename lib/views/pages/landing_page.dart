import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<LandingItem> _landingItems = [
    LandingItem(
      imgPath: "assets/images/find_work.png",
      title: "Find great work",
      description:
          "Meet clients ou're excited to work with and grow your independent career or business",
    ),
    LandingItem(
      imgPath: "assets/images/find_opportunities.png",
      title: "Find opportunities for every stage of your freelance career",
      description: "Search and apply for jobs, sav job searches and more.",
    ),
    LandingItem(
      imgPath: "assets/images/collaborate.png",
      title: "Collaborate on the go",
      description: "Chat, share files, and sahre progress.",
    ),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Center(
            child: Image.asset(
              width: MediaQuery.of(context).size.width * 0.4,
              'assets/logos/logo_letter_upwork.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView.builder(
              itemCount: _landingItems.length,
              itemBuilder: (context, index) {
                return LandingItemViewModel(item: _landingItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// modèle de données
class LandingItem {
  String imgPath;
  String title;
  String description;

  LandingItem({
    required this.imgPath,
    required this.title,
    required this.description,
  });
}

class LandingItemViewModel extends StatelessWidget {
  final LandingItem item;
  const LandingItemViewModel({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          height: MediaQuery.of(context).size.height * 0.4,
          item.imgPath,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 50.0,
            left: 50,
            bottom: 10,
            top: 20,
          ),
          child: Text(
            textAlign: TextAlign.center,
            item.title,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50.0, left: 50),
          child: Text(
            textAlign: TextAlign.center,
            item.description,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
