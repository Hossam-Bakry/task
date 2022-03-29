import 'package:etisalat_task/container_animation.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int? index;
  bool anyBoxClicked = false;

  AlignmentGeometry alignStart1 = Alignment.topLeft;
  AlignmentGeometry alignStart2 = Alignment.topRight;
  AlignmentGeometry alignStart3 = Alignment.bottomLeft;
  AlignmentGeometry alignStart4 = Alignment.bottomRight;

  AlignmentGeometry alignEnd1 = Alignment.topLeft;
  AlignmentGeometry alignEnd2 = Alignment.topRight;
  AlignmentGeometry alignEnd3 = Alignment.bottomLeft;
  AlignmentGeometry alignEnd4 = Alignment.bottomRight;

  double lengthStart1 = 95.0;
  double lengthStart2 = 95.0;
  double lengthStart3 = 95.0;
  double lengthStart4 = 95.0;

  double lengthEnd1 = 95.0;
  double lengthEnd2 = 95.0;
  double lengthEnd3 = 95.0;
  double lengthEnd4 = 95.0;

  double endOpacity1 = 0;
  double endOpacity2 = 0;
  double endOpacity3 = 0;
  double endOpacity4 = 0;

  double startOpacity1 = 0;
  double startOpacity2 = 0;
  double startOpacity3 = 0;
  double startOpacity4 = 0;

  double startFont1 = 12;
  double startFont2 = 12;
  double startFont3 = 12;
  double startFont4 = 12;

  double endFont1 = 20;
  double endFont2 = 20;
  double endFont3 = 20;
  double endFont4 = 20;

  initializeController() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 650),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 650),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  bool widgetInCenter = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding:
              const EdgeInsets.only(left: 35, right: 35, top: 100, bottom: 90),
          child: Stack(
            children: [
              GestureDetector(
                key: const ValueKey(1),
                onTap: () {
                  if (anyBoxClicked == false) {
                    setState(() {
                      setOrignStart();
                      postion1(1, 'end');
                      _controller.forward(from: 0.0);
                      anyBoxClicked = true;
                    });
                  } else {
                    if (alignEnd1 == Alignment.topCenter) {
                      setState(() {
                        setOrignEnd();
                        postion1(1, 'start');
                        _controller.forward(from: 0);
                        anyBoxClicked = false;
                      });
                    } else {
                      if (alignEnd2 == Alignment.topCenter) {
                        setState(() {
                          postion1(2, 'start');
                          postion1(1, 'end');
                          _controller.forward(from: 0);
                          anyBoxClicked = true;
                        });
                      } else if (alignEnd3 == Alignment.topCenter) {
                        setState(() {
                          postion1(3, 'start');
                          postion1(1, 'end');
                          _controller.forward(from: 0);
                          anyBoxClicked = true;
                        });
                      } else {
                        setState(() {
                          postion1(4, 'start');
                          postion1(1, 'end');
                          _controller.forward(from: 0);
                          anyBoxClicked = true;
                        });
                      }
                    }
                  }
                },
                child: ContainerAnimation(
                  controller: _controller,
                  text: 'Smart\nCities',
                  img: 'assets/images/city.png',
                  alignStart: alignStart1,
                  alignEnd: alignEnd1,
                  lengthStart: lengthStart1,
                  lengthEnd: lengthEnd1,
                  startOpacity: startOpacity1,
                  endOpacity: endOpacity1,
                  startFontSize: startFont1,
                  endFontSize: endFont1,
                ),
              ),
              GestureDetector(
                key: const ValueKey(2),
                onTap: () {
                  if (anyBoxClicked == false) {
                    setState(() {
                      setOrignStart();
                      postion1(2, 'end');
                      _controller.forward(from: 0.0);
                      anyBoxClicked = true;
                    });
                  } else {
                    if (alignEnd2 == Alignment.topCenter) {
                      setState(() {
                        postion1(2, 'start');
                        setOrignEnd();
                        _controller.forward(from: 0);
                        anyBoxClicked = false;
                      });
                    } else {
                      if (alignEnd1 == Alignment.topCenter) {
                        setState(() {
                          postion1(1, 'start');
                          postion1(2, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else if (alignEnd3 == Alignment.topCenter) {
                        setState(() {
                          postion1(3, 'start');
                          postion1(2, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else {
                        setState(() {
                          postion1(4, 'start');
                          postion1(2, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      }
                    }
                  }
                },
                child: ContainerAnimation(
                  controller: _controller,
                  text: 'Digital\nTransformation',
                  img: 'assets/images/fingr.png',
                  alignStart: alignStart2,
                  alignEnd: alignEnd2,
                  lengthStart: lengthStart2,
                  lengthEnd: lengthEnd2,
                  startOpacity: startOpacity2,
                  endOpacity: endOpacity2,
                  startFontSize: startFont2,
                  endFontSize: endFont2,
                ),
              ),
              GestureDetector(
                key: const ValueKey(3),
                onTap: () {
                  if (anyBoxClicked == false) {
                    setState(() {
                      setOrignStart();
                      postion1(3, 'end');
                      _controller.forward(from: 0.0);
                    });
                    anyBoxClicked = true;
                  } else {
                    if (alignEnd3 == Alignment.topCenter) {
                      setState(() {
                        postion1(3, 'start');
                        setOrignEnd();
                        _controller.forward(from: 0.0);
                        anyBoxClicked = false;
                      });
                    } else {
                      if (alignEnd1 == Alignment.topCenter) {
                        setState(() {
                          postion1(1, 'start');
                          postion1(3, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else if (alignEnd2 == Alignment.topCenter) {
                        setState(() {
                          postion1(2, 'start');
                          postion1(3, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else {
                        setState(() {
                          postion1(4, 'start');
                          postion1(3, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      }
                    }
                  }
                },
                child: ContainerAnimation(
                  controller: _controller,
                  text: 'Security',
                  img: 'assets/images/security.png',
                  alignStart: alignStart3,
                  alignEnd: alignEnd3,
                  lengthStart: lengthStart3,
                  lengthEnd: lengthEnd3,
                  startOpacity: startOpacity3,
                  endOpacity: endOpacity3,
                  startFontSize: startFont3,
                  endFontSize: endFont3,
                ),
              ),
              GestureDetector(
                key: const ValueKey(4),
                onTap: () {
                  if (anyBoxClicked == false) {
                    setState(() {
                      setOrignStart();
                      postion1(4, 'end');
                      _controller.forward(from: 0.0);
                    });
                    anyBoxClicked = true;
                  } else {
                    if (alignEnd4 == Alignment.topCenter) {
                      setState(() {
                        postion1(4, 'start');
                        setOrignEnd();
                        _controller.forward(from: 0.0);
                        anyBoxClicked = false;
                      });
                    } else {
                      if (alignEnd1 == Alignment.topCenter) {
                        setState(() {
                          postion1(1, 'start');
                          postion1(4, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else if (alignEnd2 == Alignment.topCenter) {
                        setState(() {
                          postion1(2, 'start');
                          postion1(4, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      } else {
                        setState(() {
                          postion1(3, 'start');
                          postion1(4, 'end');
                          _controller.forward(from: 0.0);
                          anyBoxClicked = true;
                        });
                      }
                    }
                  }
                },
                child: ContainerAnimation(
                  controller: _controller,
                  text: 'Health',
                  img: 'assets/images/health.png',
                  alignStart: alignStart4,
                  alignEnd: alignEnd4,
                  lengthStart: lengthStart4,
                  lengthEnd: lengthEnd4,
                  startOpacity: startOpacity4,
                  endOpacity: endOpacity4,
                  startFontSize: startFont4,
                  endFontSize: endFont4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  postion1(int index, String position) {
    if (position == 'start') {
      if (index == 1) {
        alignStart1 = Alignment.topCenter;
        alignStart2 = Alignment.bottomLeft;
        alignStart3 = Alignment.bottomCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 140;
        lengthStart2 = 65;
        lengthStart3 = 65;
        lengthStart4 = 65;
        startOpacity1 = 1;
        startOpacity2 = 0;
        startOpacity3 = 0;
        startOpacity4 = 0;
        startFont1 = 20;
        startFont2 = 11;
        startFont3 = 11;
        startFont4 = 11;
      } else if (index == 2) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.topCenter;
        alignStart3 = Alignment.bottomCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 65;
        lengthStart2 = 140;
        lengthStart3 = 65;
        lengthStart4 = 65;
        startOpacity1 = 0;
        startOpacity2 = 1;
        startOpacity3 = 0;
        startOpacity4 = 0;
        startFont1 = 11;
        startFont2 = 20;
        startFont3 = 11;
        startFont4 = 11;
      } else if (index == 3) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.topCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 140;
        lengthStart4 = 65;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 1;
        startOpacity4 = 0;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 20;
        startFont4 = 11;
      } else {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.bottomRight;
        alignStart4 = Alignment.topCenter;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 65;
        lengthStart4 = 140;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 0;
        startOpacity4 = 1;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 11;
        startFont4 = 20;
      }
    } else {
      if (index == 1) {
        alignEnd1 = Alignment.topCenter;
        alignEnd2 = Alignment.bottomLeft;
        alignEnd3 = Alignment.bottomCenter;
        alignEnd4 = Alignment.bottomRight;
        lengthEnd1 = 140;
        lengthEnd2 = 65;
        lengthEnd3 = 65;
        lengthEnd4 = 65;
        endOpacity1 = 1;
        endOpacity2 = 0;
        endOpacity3 = 0;
        endOpacity4 = 0;
        endFont1 = 20;
        endFont2 = 11;
        endFont3 = 11;
        endFont4 = 11;
      } else if (index == 2) {
        alignEnd1 = Alignment.bottomLeft;
        alignEnd2 = Alignment.topCenter;
        alignEnd3 = Alignment.bottomCenter;
        alignEnd4 = Alignment.bottomRight;
        lengthEnd1 = 65;
        lengthEnd2 = 140;
        lengthEnd3 = 65;
        lengthEnd4 = 65;
        endOpacity1 = 0;
        endOpacity2 = 1;
        endOpacity3 = 0;
        endOpacity4 = 0;
        endFont1 = 11;
        endFont2 = 20;
        endFont3 = 11;
        endFont4 = 11;
      } else if (index == 3) {
        alignEnd1 = Alignment.bottomLeft;
        alignEnd2 = Alignment.bottomCenter;
        alignEnd3 = Alignment.topCenter;
        alignEnd4 = Alignment.bottomRight;
        lengthEnd1 = 65;
        lengthEnd2 = 65;
        lengthEnd3 = 140;
        lengthEnd4 = 65;
        endOpacity1 = 0;
        endOpacity2 = 0;
        endOpacity3 = 1;
        endOpacity4 = 0;
        endFont1 = 11;
        endFont2 = 11;
        endFont3 = 20;
        endFont4 = 11;
      } else {
        alignEnd1 = Alignment.bottomLeft;
        alignEnd2 = Alignment.bottomCenter;
        alignEnd3 = Alignment.bottomRight;
        alignEnd4 = Alignment.topCenter;
        lengthEnd1 = 65;
        lengthEnd2 = 65;
        lengthEnd3 = 65;
        lengthEnd4 = 140;
        endOpacity1 = 0;
        endOpacity2 = 0;
        endOpacity3 = 0;
        endOpacity4 = 1;
        endFont1 = 11;
        endFont2 = 11;
        endFont3 = 11;
        endFont4 = 20;
      }
    }
  }

  postion2(int index) {
    if (index == 1) {
      if (alignStart2 == alignStart2) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.topCenter;
        alignStart3 = Alignment.bottomCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 65;
        lengthStart2 = 140;
        lengthStart3 = 65;
        lengthStart4 = 65;
        startOpacity1 = 0;
        startOpacity2 = 1;
        startOpacity3 = 0;
        startOpacity4 = 0;
        startFont1 = 11;
        startFont2 = 20;
        startFont3 = 11;
        startFont4 = 11;
      } else if (alignStart3 == Alignment.topCenter) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.topCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 140;
        lengthStart4 = 65;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 1;
        startOpacity4 = 0;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 20;
        startFont4 = 11;
      } else if (alignStart4 == Alignment.topCenter) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.bottomRight;
        alignStart4 = Alignment.topCenter;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 65;
        lengthStart4 = 140;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 0;
        startOpacity4 = 1;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 11;
        startFont4 = 20;
      }
    } else if (index == 2) {
      if (alignStart1 == Alignment.topCenter) {
        alignStart1 = Alignment.topCenter;
        alignStart2 = Alignment.bottomLeft;
        alignStart3 = Alignment.bottomCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 140;
        lengthStart2 = 65;
        lengthStart3 = 65;
        lengthStart4 = 65;
        startOpacity1 = 1;
        startOpacity2 = 0;
        startOpacity3 = 0;
        startOpacity4 = 0;
        startFont1 = 20;
        startFont2 = 11;
        startFont3 = 11;
        startFont4 = 11;
      } else if (alignStart3 == Alignment.topCenter) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.topCenter;
        alignStart4 = Alignment.bottomRight;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 140;
        lengthStart4 = 65;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 1;
        startOpacity4 = 0;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 20;
        startFont4 = 11;
      } else if (alignStart4 == Alignment.topCenter) {
        alignStart1 = Alignment.bottomLeft;
        alignStart2 = Alignment.bottomCenter;
        alignStart3 = Alignment.bottomRight;
        alignStart4 = Alignment.topCenter;
        lengthStart1 = 65;
        lengthStart2 = 65;
        lengthStart3 = 65;
        lengthStart4 = 140;
        startOpacity1 = 0;
        startOpacity2 = 0;
        startOpacity3 = 0;
        startOpacity4 = 1;
        startFont1 = 11;
        startFont2 = 11;
        startFont3 = 11;
        startFont4 = 20;
      }
    }
  }

  setOrignEnd() {
    alignEnd1 = Alignment.topLeft;
    alignEnd2 = Alignment.topRight;
    alignEnd3 = Alignment.bottomLeft;
    alignEnd4 = Alignment.bottomRight;
    lengthEnd1 = 95.0;
    lengthEnd2 = 95.0;
    lengthEnd3 = 95.0;
    lengthEnd4 = 95.0;
    endOpacity1 = 0;
    endOpacity2 = 0;
    endOpacity3 = 0;
    endOpacity4 = 0;
    endFont1 = 12;
    endFont2 = 12;
    endFont3 = 12;
    endFont4 = 12;
  }

  setOrignStart() {
    alignStart1 = Alignment.topLeft;
    alignStart2 = Alignment.topRight;
    alignStart3 = Alignment.bottomLeft;
    alignStart4 = Alignment.bottomRight;
    lengthStart1 = 95.0;
    lengthStart2 = 95.0;
    lengthStart3 = 95.0;
    lengthStart4 = 95.0;
    startOpacity1 = 0;
    startOpacity2 = 0;
    startOpacity3 = 0;
    startOpacity4 = 0;
    startFont1 = 12;
    startFont2 = 12;
    startFont3 = 12;
    startFont4 = 12;
  }
}
