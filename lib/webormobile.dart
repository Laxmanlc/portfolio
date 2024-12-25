import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to get the screen width
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check if the screen width is less than 800px
        if (constraints.maxWidth < 1000) {
          // Mobile or tablet-sized screen (less than 800px)
          return Scaffold(
            appBar: AppBar(
              title: const Text('Mobile/Tablet Layout'),
            ),
            body: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This is a Mobile/Tablet screen'),
                  // Add mobile-specific widgets here
                ],
              ),
            ),
          );
        } else {
          // Larger screen (e.g., PC/desktop)
          return const Webview();
        }
      },
    );
  }
}
