import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore: must_be_immutable
class DetailkebutuhanoneItemWidget extends StatelessWidget {
  const DetailkebutuhanoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGrid,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wireframing_11_01_2024.pdf",
                  style: CustomTextStyles.labelLargeInterBluegray900,
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Text(
                      "92 kb",
                      style: theme.textTheme.bodySmall,
                    ),
                    Container(
                      height: 5.adaptSize,
                      width: 5.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "13 februari 2023",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDownload03,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(bottom: 14.v),
          ),
        ],
      ),
    );
  }
}
