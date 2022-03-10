import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

final List<String> titles = [
  "ARMS",
  "ABS",
  "LEGS",
  "YOGA",
];

final List<Widget> images = [
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/arms2.jpg",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/abs2.jpg",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/legs.jpg",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/yoga.png",
      fit: BoxFit.cover,
    ),
  ),
];

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "  Keep Fit",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'LuckiestGuy',
            letterSpacing: 2.0,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Color.fromARGB(200, 0, 0, 0),
              ),
            ],
          ),
        ),
        elevation: 10,
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/mitchell-luo-boeqnxvueqM-unsplash (1).jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: VerticalCardPager(
                    textStyle: const TextStyle(
                        fontFamily: "ChakraPetch",
                        color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(200, 0, 0, 0),
                        ),
                      ],
                        ),
                    titles: titles,
                    images: images,
                    onPageChanged: (page) {
                      // print(page);
                    },
                    onSelectedItem: (index) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}