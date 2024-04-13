import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class TrophyScreen extends StatefulWidget {
  const TrophyScreen({super.key});

  static const String routeName = '/trophy';

  @override
  State<TrophyScreen> createState() => _TrophyScreenState();
}

class _TrophyScreenState extends State<TrophyScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2472E3),
                          Color(0xff0550BB),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20).copyWith(
                        top: 32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Top Users',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(5),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20).copyWith(bottom: 0),
                                child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(bottom: 10),
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment.centerRight,
                                            end: Alignment.topRight,
                                            colors: [
                                              Color.fromARGB(255, 134, 117, 245),
                                              Color.fromARGB(255, 161, 179, 204),
                                              Color.fromARGB(255, 185, 209, 243),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: index == 0
                                                    ? Colors.amber
                                                    : index == 1
                                                        ? Colors.cyanAccent
                                                        : index == 2
                                                            ? Colors.blueGrey
                                                            : const Color.fromARGB(
                                                                255, 169, 200, 216),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              child: Stack(
                                                children: [
                                                  NeumorphicButton(
                                                    width: 50,
                                                    height: 50,
                                                    backgroundColor:
                                                        Colors.black12.withOpacity(0.09),
                                                    bottomRightShadowColor:
                                                        Colors.black12.withOpacity(0.05),
                                                    topLeftShadowColor:
                                                        Colors.black12.withOpacity(0.05),
                                                    onTap: () {},
                                                    child: const SizedBox(),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      '${index + 1}',
                                                      style: const TextStyle(
                                                        fontFamily: 'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.w800,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Don'kme",
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'Reward Description',
                                                  style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 37,
            child: ScaleTransition(
              scale: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: AnimationController(
                    vsync: this,
                    duration: const Duration(milliseconds: 500),
                  )..forward(),
                  curve: Curves.elasticOut,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Transform.rotate(
                  angle: -0.0,
                  child: Lottie.asset(
                    'assets/images/crown.json',
                    width: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
