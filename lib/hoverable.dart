import 'package:flutter/material.dart';

class HoverableBox extends StatefulWidget {
  const HoverableBox({super.key});

  @override
  State<HoverableBox> createState() => _HoverableBoxState();
}

class _HoverableBoxState extends State<HoverableBox> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHover = true;
      }),
      onExit: (_) => setState(() {
        _isHover = false;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isHover
              ? const Color.fromARGB(70, 26, 24, 48)
              : const Color.fromARGB(34, 13, 11, 30),
          boxShadow: _isHover
              ? [
                  const BoxShadow(
                    color: Color.fromARGB(139, 109, 121, 137),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ]
              : [],
          borderRadius: BorderRadius.circular(4),
        ),
        margin: const EdgeInsets.all(2),
      ),
    );
  }
}
