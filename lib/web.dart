import 'package:flutter/material.dart';
import 'package:portfolio/widgets.dart';

class ContainerItems extends StatefulWidget {
  const ContainerItems({super.key});

  @override
  State<ContainerItems> createState() => _ContainerItemsState();
}

class _ContainerItemsState extends State<ContainerItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 500,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage("assets/pp.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I'm Laxman",
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 145, 1),
                          Colors.blue,
                          Colors.green
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                      child: const Text(
                        'Flutter developer \n& UI/UX designer',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .white, // This is required for the gradient to be visible.
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "Nepal - Karnali Province ,  Surkhet",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 172, 170, 170)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          buttonsRow(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: textrow(),
          ),
        ],
      ),
    );
  }
}
