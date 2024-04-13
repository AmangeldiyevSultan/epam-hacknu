import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/constants/color.dart';
import 'package:flutter_epam_kazakh/src/dashboard/screen/dashboard_screen.dart';
import 'package:flutter_epam_kazakh/src/map/screen/map_screen.dart';
import 'package:flutter_epam_kazakh/src/trophy/screen/trophy_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  static const String routeName = '/navbar';

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late DraggableScrollableController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DraggableScrollableController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final pages = <Widget>[
    DashboardScreen(),
    TrophyScreen(),
    MapScreen(),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedTab],
      bottomNavigationBar: BottomAppBar(
        height: 60.h,
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTabItem(
              index: 0,
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: selectedTab == 0 ? primary : Colors.grey,
              ),
              currentIndex: selectedTab,
            ),
            _buildTabItem(
              index: 1,
              icon: FaIcon(
                FontAwesomeIcons.trophy,
                color: selectedTab == 1 ? primary : Colors.grey,
              ),
              currentIndex: selectedTab,
            ),
            _buildTabItem(
              index: 2,
              icon: FaIcon(
                FontAwesomeIcons.faceLaughWink,
                color: selectedTab == 2 ? primary : Colors.grey,
              ),
              currentIndex: selectedTab,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required int index,
    required FaIcon icon,
    required int currentIndex,
  }) {
    return GestureDetector(
      onTap: () {
        if (index != selectedTab) {
          setState(() {
            selectedTab = index;
          });
        }
      },
      child: icon,
    );

    //   SvgPicture.asset(svgPath,
    //       width: 48.w,
    //       fit: BoxFit.contain,
    //       colorFilter: color != null && index == selectedTab
    //           ? ColorFilter.mode(color, BlendMode.srcIn)
    //           : null),
    // );
  }
}

// class _MyClipper extends CustomClipper<Path> {
//   final double space;

//   _MyClipper(this.space);

//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final halfWidth = size.width / 2;
//     final halfSpace = space / 2;
//     final curve = space / 15;
//     final height = halfSpace / 1.15;
//     path.lineTo(halfWidth - halfSpace, 0);
//     path.cubicTo(halfWidth - halfSpace, 0, halfWidth - halfSpace + curve,
//         height, halfWidth, height);

//     path.cubicTo(halfWidth, height, halfWidth + halfSpace - curve, height,
//         halfWidth + halfSpace, 0);

//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
// }
