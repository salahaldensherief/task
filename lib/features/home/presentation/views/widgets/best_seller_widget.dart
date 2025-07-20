import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';
import '../../../data/models/products_model.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
    required this.product,
    this.isFav = false,
  });
  final ProductsModel product;
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 10, top: 3,bottom:4 ),
      child: Container(
        width: 253.w,
        height: 272.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4.r,
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 160.h,
              margin:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 16.h),
              decoration: BoxDecoration(color: const Color(0xffF7F7FB)),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 24.h,
                          width: 42.w,
                          decoration: BoxDecoration(color: Colors.red.shade700),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Text(
                              textAlign: TextAlign.center,
                              product.dic,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: isFav ? Colors.teal : AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        AssetsImage.boxPhoto,
                        height: 120.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.productName,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.category,
                          style: TextStyle(
                           fontFamily: AppFonts.cairo,
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          product.price,
                          style: TextStyle(
                            fontFamily: AppFonts.cairo,                            fontWeight: FontWeight.w800,
                            color: AppColors.primaryColor,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}