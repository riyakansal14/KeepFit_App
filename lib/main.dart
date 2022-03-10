import 'package:flutter/material.dart';
import 'package:keepfitapp/home_page.dart';


void main() => runApp(const KeepFit());

class KeepFit extends StatelessWidget {
  const KeepFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
