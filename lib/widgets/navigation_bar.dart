import 'package:flutter/material.dart';
import 'package:ifp_webapp/utils/color_list.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileNavBar(),
      desktop: (context) => DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          const Icon(Icons.menu),
        ],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 104, vertical: 16),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Home"),
              navButton("Screenings"),
              navButton("Blogs"),
              navButton("About Us"),
              navButton("Contact Us"),
            ],
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return InkWell(
      hoverColor: ColorList.primary,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 17,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return const SizedBox(
      child: Text(
        "Indie Football Podcast",
        style: TextStyle(
          fontSize: 22,
          fontFamily: 'DMSans',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
