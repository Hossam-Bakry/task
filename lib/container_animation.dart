import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  late AnimationController controller;
  AlignmentGeometry alignStart;
  AlignmentGeometry alignEnd;
  double lengthStart;
  double lengthEnd;
  String text;
  String img;
  double endOpacity;
  double startOpacity;
  double startFontSize;
  double endFontSize;

  ContainerAnimation({
    Key? key,
    required this.controller,
    required this.alignStart,
    required this.alignEnd,
    required this.lengthStart,
    required this.lengthEnd,
    required this.text,
    required this.img,
    required this.endOpacity,
    required this.startOpacity,
    required this.startFontSize,
    required this.endFontSize,
  }) : super(key: key);

  @override
  _ContainerAnimationState createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animatedWidth;
  late Animation<double> _animatedHeight;
  late Animation<AlignmentGeometry> _animatedAlignment;
  late Animation<double> _animatedOpacity;
  late Animation<double> _animatedFontSize;

  @override
  Widget build(BuildContext context) {
    setState(() {
      _animatedAlignment = Tween<AlignmentGeometry>(
        begin: widget.alignStart,
        end: widget.alignEnd,
      ).animate(
        CurvedAnimation(
          parent: widget.controller,
          curve: Curves.fastOutSlowIn,
        ),
      );

      _animatedWidth = Tween<double>(
        begin: widget.lengthStart,
        end: widget.lengthEnd,
      ).animate(
        CurvedAnimation(
          parent: widget.controller,
          curve: Curves.fastOutSlowIn,
        ),
      );

      _animatedHeight = Tween<double>(
        begin: widget.lengthStart,
        end: widget.lengthEnd,
      ).animate(
        CurvedAnimation(
          parent: widget.controller,
          curve: Curves.fastOutSlowIn,
        ),
      );

      _animatedOpacity = Tween<double>(
        begin: widget.startOpacity,
        end: widget.endOpacity,
      ).animate(CurvedAnimation(
        parent: widget.controller,
        curve: Curves.fastOutSlowIn,
      ));

      _animatedFontSize = Tween<double>(
        begin: widget.startFontSize,
        end: widget.endFontSize,
      ).animate(CurvedAnimation(
        parent: widget.controller,
        curve: Curves.fastOutSlowIn,
      ));
    });

    return AnimatedBuilder(
      animation: _animatedAlignment,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.only(top: 90, left: 5, right: 5),
          alignment: _animatedAlignment.value,
          child: Container(
            width: _animatedWidth.value + 42,
            height: _animatedHeight.value + 60,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: _animatedWidth.value,
                  height: _animatedHeight.value,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color:
                          Colors.tealAccent.withOpacity(_animatedOpacity.value),
                      width: 1,
                    ),
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: _animatedFontSize.value,
                    color: Colors.white,
                    shadows: const <Shadow>[
                      Shadow(
                        // offset: Offset(0.5, 0.5),
                        blurRadius: 20.0,
                        color: Color.fromARGB(255, 98, 248, 208),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
