import 'package:flutter/material.dart';
import 'package:keepfitapp/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "       Keep Fit",
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
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          children: [
            const SizedBox(height: 250,),
            ElevatedButton(
              child: const Text(
                "Lezz Do it!!",
                style: TextStyle(
                  fontFamily: 'ChakraPetch',
                ),
              ),
                 onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (_) => const Menu(),
                    ),
                  );
                 },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black.withOpacity(0.5),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.all(30),
                  textStyle: const TextStyle(
                    fontSize: 30,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
