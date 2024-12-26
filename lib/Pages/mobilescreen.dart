import 'package:flutter/material.dart';

class Mobilescreen extends StatefulWidget {
  const Mobilescreen({super.key});

  @override
  State<Mobilescreen> createState() => _MobilescreenState();
}

class _MobilescreenState extends State<Mobilescreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Image.asset(
          alignment: Alignment.topCenter,
          "assets/phone.png",
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
