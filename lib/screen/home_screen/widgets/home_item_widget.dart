import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget({
    Key? key,
    this.onTapOpen,
  }) : super(
          key: key,
        );

  VoidCallback? onTapOpen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOpen!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Pengadaan Kurni kayu dengan gaya minimalis modern",
                style: CustomTextStyles.labelMediumBlack90011,
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse104,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fauzan",
                            style: CustomTextStyles.labelLargePoppins,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "PT. Indonesia maju bersama",
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    CustomElevatedButton(
                      height: 22.v,
                      width: 79.h,
                      text: "Open",
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 3.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                      buttonTextStyle: theme.textTheme.labelMedium!,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              height: 55.v,
              width: 299.h,
              margin: EdgeInsets.only(left: 20.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 399.h,
                      child: Text(
                        "Dibutuhkan bahan baku kayu, aluminium, untuk digunakan sebagai bahan baku produk furniture kursi",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallPoppinsBlack9008,
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.bottomLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(left: 110.h),
                  //     child: Text(
                  //       "... lihat lainnya",
                  //       style: CustomTextStyles.poppinsBlack900,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle9,
              height: 209.v,
              width: 360.h,
            ),
            SizedBox(height: 1.v),
            Container(
              width: 120.h,
              margin: EdgeInsets.only(left: 20.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Harga Perkiraan Sendiri :",
                      style: CustomTextStyles.bodySmallPoppinsff000000,
                    ),
                    TextSpan(
                      text: " \n",
                      style: CustomTextStyles.labelLargePoppinsff000000,
                    ),
                    TextSpan(
                      text: "Rp. 15.000.000",
                      style: CustomTextStyles.labelLargePoppinsff000000SemiBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
