import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController? searchController;

  const SearchBarWidget({super.key, this.searchController});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double barHeight =
        screenWidth < 360 ? 36.0 : (screenWidth < 600 ? 60.0 : 50.0);
    return Container(
      height: barHeight,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search here ...',
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize:
                        screenWidth < 360 ? 12 : (screenWidth < 600 ? 16 : 14),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      AssetsImage.searchPhoto,
                      width:
                          screenWidth < 360
                              ? 18
                              : (screenWidth < 600 ? 20 : 24),
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: screenWidth < 360 ? 50 : (screenWidth < 600 ? 60 : 70),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(AssetsImage.filterPhoto),
            ),
          ),
        ],
      ),
    );
  }
}
