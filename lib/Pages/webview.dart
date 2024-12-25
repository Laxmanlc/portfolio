import 'package:flutter/material.dart';
import 'package:portfolio/widgets/hoverable.dart';
import 'package:portfolio/widgets/glassmorph.dart';
import 'package:portfolio/widgets/containeritems.dart';

class Webview extends StatefulWidget {
  const Webview({super.key});

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Grid of hoverable boxes
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/bgg.gif",
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 70,
                mainAxisSpacing: 0.5,
                crossAxisSpacing: 0.5,
              ),
              itemCount: 500,
              itemBuilder: (context, index) {
                return const HoverableBox();
              },
            ),
          ),
          // Glassmorphic container overlay for additional items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Image.asset(
                    alignment: Alignment.topCenter,
                    "assets/phone.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ]),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlassmorphicContainer(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: ContainerItems(),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
