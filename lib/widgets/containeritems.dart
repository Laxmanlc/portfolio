import 'package:flutter/material.dart';
import 'package:portfolio/src/fonts.dart';
import 'package:portfolio/widgets/cards.dart';
import 'package:portfolio/widgets/widgets.dart';

class ContainerItems extends StatefulWidget {
  const ContainerItems({super.key});

  @override
  State<ContainerItems> createState() => _ContainerItemsState();
}

class _ContainerItemsState extends State<ContainerItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.55,
      height: MediaQuery.of(context).size.height * 0.9,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
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
                        " I'm Laxman ",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: meriendafont,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 243, 17, 251),
                            Color.fromARGB(255, 1, 217, 255),
                            Color.fromARGB(255, 2, 254, 40),
                            Color.fromARGB(255, 241, 241, 4),
                            Color.fromARGB(255, 241, 130, 4)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                        child: const Text(
                          'Flutter developer \n& UI/UX designer',
                          style: TextStyle(
                            fontFamily: antonfont,
                            fontSize: 45,

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
                                fontFamily: robotoslabfont,
                                fontSize: 16,
                                color: Color.fromARGB(255, 172, 170, 170)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const ButtonsRow(),
            const SizedBox(
              height: 25,
            ),
            const Mytext(),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.55,
              child: const Center(
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        "What I Can Offer For You",
                        style: TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 1, 217, 255),
                            fontFamily: robotoslabfont,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "**Transforming Ideas into Technology**",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: exofont,
                          color: Color.fromARGB(255, 178, 179, 180),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Cards()
          ],
        ),
      ),
    );
  }
}
