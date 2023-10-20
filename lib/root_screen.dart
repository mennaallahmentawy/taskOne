import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'screen/home_screen.dart';
import 'screen/settings_screen.dart';
import 'screen/update_screen.dart';
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});
  @override
  State<RootScreen> createState() => _RootScreenState();
}
class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Date(),
    const SettingsScreen(),

  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.upload),
            icon: Icon(IconlyLight.upload),
            label: "Update",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.setting),
            icon: Icon(IconlyLight.setting),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
