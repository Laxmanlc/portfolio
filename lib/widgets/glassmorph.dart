import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphicContainer extends StatefulWidget {
  final double width;
  final double height;
  final Widget child;

  const GlassmorphicContainer({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  State<GlassmorphicContainer> createState() => _GlassmorphicContainerState();
}

class _GlassmorphicContainerState extends State<GlassmorphicContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: const Color.fromARGB(242, 255, 255, 255).withOpacity(0.07),
            width: 1),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(242, 255, 255, 255).withOpacity(0.07),
            const Color.fromARGB(242, 255, 255, 255).withOpacity(0.06),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: const Color.fromARGB(242, 255, 255, 255).withOpacity(0.06),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
