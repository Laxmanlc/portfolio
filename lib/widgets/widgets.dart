import 'package:flutter/material.dart';
import 'package:portfolio/src/fonts.dart';
import 'package:portfolio/widgets/commonbutton.dart';
import 'package:portfolio/src/commonimage.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87,
      width: MediaQuery.of(context).size.width * 0.3,
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
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: robotoslabfont),
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
}

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.55,
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
}

Row textofrow({required String text1, required String text2}) {
  return Row(
    children: [
      Text(
        text1,
        style: const TextStyle(
            fontSize: 40, color: Colors.white, fontFamily: antonfont),
      ),
      const SizedBox(
        width: 5,
      ),
      Text(text2,
          style: const TextStyle(
              color: Color.fromARGB(255, 164, 163, 163),
              fontFamily: robotoslabfont))
    ],
  );
}

// Skills

class Skills extends StatefulWidget {
  final String imagePath;
  final String text;
  final Color normalColor; // Color passed for the normal state
  final Color hoverColor; // Color passed for the hover state
  final Function onTapAction;

  const Skills({
    super.key,
    required this.imagePath,
    required this.text,
    required this.normalColor, // Normal state color
    required this.hoverColor, // Hover state color
    required this.onTapAction, // A callback function for tap action
  });

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  double scale = 1.0;
  Color containerColor = Colors.white; // Initial container color

  // Function to handle scaling and color change on hover
  void _onHover(PointerEvent details) {
    setState(() {
      scale = 1.1; // Slight zoom effect on hover
      containerColor = widget.hoverColor; // Use the hover color passed
    });
  }

  // Function to reset scale and color when hover ends
  void _onExit(PointerEvent details) {
    setState(() {
      scale = 1.0; // Normal size when hover ends
      containerColor = widget.normalColor; // Reset color to normal state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          widget.onTapAction(); // Call the passed function on tap
        },
        child: MouseRegion(
          onEnter: _onHover, // Hover effect starts
          onExit: _onExit, // Hover effect ends
          child: Transform.scale(
            scale: scale, // Apply the zoom effect
            child: Container(
              height: 100, // Set the height of the container
              width: 100, // Set the width of the container
              decoration: BoxDecoration(
                color: containerColor, // Dynamic color based on hover state
                borderRadius: BorderRadius.circular(20), // Rounded edges
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5), // White shadow effect
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ],
              ),
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50), // Circular image
                    child: Image.asset(
                      widget.imagePath, // Use the passed image URL
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    widget.text, // Use the passed text
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
