import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/home/presentation/views/home_view.dart';
import 'package:task/features/settings/presentation/views/settings_view.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../../../T-editor/presentation/views/text_editor.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static const routeName = 'bottomnavbar';
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomeView(), TextEditor(), SettingsView()];

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
    final isRTL = Directionality.of(context) == TextDirection.rtl;
    final tabWidth = MediaQuery.of(context).size.width / 3;
    final local = AppLocalizations.of(context)!;

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
                  label: local.home,
                ),
                _buildNavItem(
                  index: 1,
                  activeIconPath: AssetsImage.activeEditor,
                  inactiveIconPath: AssetsImage.inactiveEditor,
                  label: local.textEditor,
                ),
                _buildNavItem(
                  index: 2,
                  activeIconPath: AssetsImage.activeSetting,
                  inactiveIconPath: AssetsImage.inactiveSetting,
                  label: local.settings,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 100),
              alignment: Alignment(
                isRTL
                    ? (1.0 - _selectedIndex * 1.0)
                    : (-1.0 + _selectedIndex * 1.0),
                0,
              ),
              child: Container(
                width: tabWidth,
                height: 2.8,
                decoration: BoxDecoration(color: AppColors.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
