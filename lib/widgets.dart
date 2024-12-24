import 'package:flutter/material.dart';
import 'package:portfolio/commonbutton.dart';
import 'package:portfolio/commonimage.dart';

Widget buttonsRow() {
  return SizedBox(
    height: 87,
    width: 600,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialButton(
          hoverColor: const Color.fromARGB(73, 0, 179, 255),
          height: 50,
          splashColor: Colors.blue,
          color: Colors.transparent,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.blue, width: 1),
          ),
          child: const Text(
            "Contact Me",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        commonButtonWithImage(imagePath: github, onTap: () {}),
        commonButtonWithImage(imagePath: youtube, onTap: () {}),
        commonButtonWithImage(imagePath: facebook, onTap: () {}),
        commonButtonWithImage(imagePath: linkdin, onTap: () {}),
        commonButtonWithImage(imagePath: whatsapp, onTap: () {}),
      ],
    ),
  );
}

Widget textrow() {
  return SizedBox(
    height: 150,
    width: 700,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textofrow(text1: "2 +", text2: "Year of\nExperience"),
        textofrow(text1: "10 +", text2: "Projects\nCompleted"),
        textofrow(text1: "5 +", text2: "Happy\nCostumer"),
        textofrow(text1: "10 +", text2: "UI/UX\nDesigns"),
      ],
    ),
  );
}

Row textofrow({required String text1, required String text2}) {
  return Row(
    children: [
      Text(
        text1,
        style: const TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      const SizedBox(
        width: 5,
      ),
      Text(text2,
          style: const TextStyle(color: Color.fromARGB(255, 164, 163, 163)))
    ],
  );
}
