import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/home/presentation/views/home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeView(),
    const Center(child: Text('Editor')),
    const Center(child: Text('Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget _buildNavItem({
    required int index,
    required String activeIconPath,
    required String inactiveIconPath,
    required String label,
  }) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isSelected ? activeIconPath : inactiveIconPath,
            width: 26,
            height: 26,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? AppColors.primaryColor : Color(0xff999999),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final tabWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  index: 0,
                  activeIconPath: AssetsImage.activeHome,
                  inactiveIconPath: AssetsImage.inactiveHome,
                  label: 'Home',
                ),
                _buildNavItem(
                  index: 1,
                  activeIconPath: AssetsImage.activeEditor,
                  inactiveIconPath: AssetsImage.inactiveEditor,
                  label: 'Editor',
                ),
                _buildNavItem(
                  index: 2,
                  activeIconPath: AssetsImage.activeSetting,
                  inactiveIconPath: AssetsImage.inactiveSetting,
                  label: 'Settings',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 100),
              alignment: Alignment(-1.0 + _selectedIndex * 1.0, 0),
              child: Container(
                width: tabWidth,
                height: 2.8,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
