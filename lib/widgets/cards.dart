import 'package:flutter/material.dart';
import 'package:portfolio/src/fonts.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Widget makeCard({
    required String title,
    required String description,
    required String description2,
    required Color borderColor,
    required Color hoverColor,
  }) {
    return _Card(
      title: title,
      description: description,
      description2: description2,
      borderColor: borderColor,
      hoverColor: hoverColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            makeCard(
              title: "Cross Platform App Development",
              description: "From concept to app with Flutter Power.",
              description2:
                  "I am a Flutter developer with over 2 years of experience creating apps using Flutter and Firebase. I can build apps with a focus on functionality and user needs.",
              borderColor: Colors.blueAccent,
              hoverColor: const Color.fromARGB(255, 2, 255, 251),
            ),
            const SizedBox(width: 20),
            makeCard(
              title: "UI/UX Design",
              description: "Turning ideas into intuitive designs with Figma.",
              description2:
                  "More than 2 years of experience using Figma to design simple and practical interfaces. I focus on making designs that are easy to use and meet the needs of users",
              borderColor: Colors.green,
              hoverColor: const Color.fromARGB(255, 100, 255, 100),
            ),
            const SizedBox(width: 20),
            makeCard(
              title: "Website Development",
              description: "Developing modern websites with Flutter.",
              description2:
                  "I design every type of websites using Flutter, creating responsive and user-friendly experiences that work smoothly across all devices.",
              borderColor: Colors.purple,
              hoverColor: Colors.purpleAccent,
            ),
            const SizedBox(width: 20),
            makeCard(
              title: "IOT Application With FLutter",
              description: "Can Turn Normal Home into Smart Home with IOT APP",
              description2:
                  "Can Create IOT(Internet Of Things) / Smart App With Flutter and Arduino IDE , That helps to control your electronic using your phone ",
              borderColor: Colors.amber,
              hoverColor: const Color.fromARGB(255, 254, 193, 11),
            ),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatefulWidget {
  final String title;
  final String description;
  final String description2;
  final Color borderColor;
  final Color hoverColor;

  const _Card({
    required this.title,
    required this.description,
    required this.description2,
    required this.borderColor,
    required this.hoverColor,
  });

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  Color _textColor = Colors.white;
  Color _containerColor = Colors.transparent;

  void _showMessage(BuildContext context, {required String description2}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 43, 42, 42),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 600,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: antonfont,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description2,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 180, 180, 180),
                      fontSize: 25,
                      fontFamily: exofont),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _textColor = Colors.black;
          _containerColor = widget.hoverColor;
        });
      },
      onExit: (_) {
        setState(() {
          _textColor = Colors.white;
          _containerColor = Colors.transparent;
        });
      },
      child: Container(
        width: 300,
        height: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor, width: 2),
          borderRadius: BorderRadius.circular(12),
          color: _containerColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontFamily: antonfont,
                fontSize: 30,
                color: _textColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              style: TextStyle(
                fontFamily: exofont,
                fontSize: 20,
                color: _textColor,
              ),
            ),
            const Spacer(),
            MaterialButton(
              height: 50,
              splashColor: Colors.blue,
              color: Colors.transparent,
              onPressed: () {
                _showMessage(
                  context,
                  description2: widget.description2,
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.blue, width: 1),
              ),
              child: const Text(
                "Readmore",
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: exofont),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
