import 'package:flutter/material.dart';
import 'package:portfolio/src/fonts.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  // This method returns a container with customizable parameters
  Widget makeCard(
      {required String title,
      required String description,
      required Color borderColor,
      required Color hoverColor}) {
    return _Card(
      title: title,
      description: description,
      borderColor: borderColor,
      hoverColor: hoverColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Set the height of the scrollable area
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Add multiple containers using the `makeCard` method
            makeCard(
              title: "Cross Platform App Development",
              description: "From concept to app with Flutter Power.",
              borderColor: Colors.blueAccent,
              hoverColor: const Color.fromARGB(255, 2, 255, 251),
            ),
            const SizedBox(width: 20), // Space between containers
            makeCard(
              title: "UI/UX Design",
              description: "Turning ideas into intuitive designs with Figma.",
              borderColor: Colors.green,
              hoverColor: const Color.fromARGB(255, 100, 255, 100),
            ),
            const SizedBox(width: 20), // Space between containers
            makeCard(
              title: "Website Development",
              description: "Developing modern websites with Flutter.",
              borderColor: Colors.purple,
              hoverColor: Colors.purpleAccent,
            ),
            // Add more cards as needed
          ],
        ),
      ),
    );
  }
}

class _Card extends StatefulWidget {
  final String title;
  final String description;
  final Color borderColor;
  final Color hoverColor;

  const _Card({
    required this.title,
    required this.description,
    required this.borderColor,
    required this.hoverColor,
  });

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  Color _textColor = Colors.white;
  Color _containerColor = Colors.transparent;

  // Method to show the "Read More" message
  void _showMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 43, 42, 42),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 600, // Increased dialog size
            height: 500, // Increased dialog size
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
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
                  widget.description,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: exofont),
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
          borderRadius: BorderRadius.circular(12), // Rounded corners
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
                _showMessage(context);
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
