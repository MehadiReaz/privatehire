import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privatehire/features/home/presentation/home_view.dart';
import 'package:privatehire/features/profile/presentation/profile_view.dart';

import '../../mock_test/presentation/mock_test_view.dart';
import '../../premium/view/premium_view.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  CustomBottomNavBarState createState() => CustomBottomNavBarState();
}

class CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const MockTestView(),
    const PremiumView(),
    const ProfileView(),
  ];

  final List<String> _iconPaths = [
    'assets/svgs/home.svg',
    'assets/svgs/book.svg',
    'assets/svgs/Dimond_alt.svg',
    'assets/svgs/profile.svg',
  ];

  final List<String> _labels = [
    'Home',
    'Mock Test',
    'Premium',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: List.generate(4, (index) {
          bool isSelected = _selectedIndex == index;
          return BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  _iconPaths[index],
                  color: isSelected
                      ? const Color(0xFF007465)
                      : const Color(0xFFA2A2A2),
                  width: 24,
                  height: 20,
                ),
                const SizedBox(height: 4),
                Text(
                  _labels[index],
                  style: TextStyle(
                    color: isSelected
                        ? const Color(0xFF007465)
                        : const Color(0xFFA2A2A2),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
      ),
    );
  }
}
