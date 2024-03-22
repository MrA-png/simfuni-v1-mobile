import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_title.dart';
import 'package:simfuni_v1/screen/detail_kebutuhan_deskripsi/detail_kebutuhan_deskripsi.dart';
import 'package:simfuni_v1/screen/detail_kebutuhan_lampiran/detail_kebutuhan_lampiran.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

class DetailKebutuhanTabContainerScreen extends StatefulWidget {
  const DetailKebutuhanTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailKebutuhanTabContainerScreenState createState() =>
      DetailKebutuhanTabContainerScreenState();
}

class DetailKebutuhanTabContainerScreenState
    extends State<DetailKebutuhanTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwo(context),
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 622.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: const [
                            DetailKebutuhanPage(),
                            DetailKebutuhanOnePage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      width: 320.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          CustomAppBar(
            leadingWidth: 67.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgFloatingIcon,
              // margin: EdgeInsets.only(left: 2.h),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "Detail Kebutuhan",
              style: const TextStyle(fontSize: 8),
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Tanggal Pembuatan",
                    style: CustomTextStyles.bodySmallPoppins66000000,
                  ),
                  const TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "13 Februari 2024",
                    style: CustomTextStyles.labelSmallb2000000,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 2.v),
          Container(
            width: 253.h,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 49.h,
            ),
            child: Text(
              "Pengadaan Kurni kayu dengan gaya minimalis modern",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Harga Perkiraan Sendiri (HPS)\n",
                            style: CustomTextStyles.labelSmallff888b90,
                          ),
                          TextSpan(
                            text: "Rp 134.563.000.00,-",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 71.h,
                      bottom: 7.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "Status Tender",
                            style: CustomTextStyles.labelSmallff888b90,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          width: 73.h,
                          padding: EdgeInsets.symmetric(horizontal: 22.h),
                          decoration:
                              AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "Open",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse104,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 4.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Imam Fauzan A. Uskara",
                        style: CustomTextStyles.labelLargePoppins,
                      ),
                      Text(
                        "PT. Indonesia maju bersama",
                        style: CustomTextStyles.bodySmallPoppinsGray80099,
                      ),
                      SizedBox(height: 1.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMarkerPin04,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              " Kota Tangerang",
                              style: CustomTextStyles.bodySmallPoppinsGray80099,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 45.v,
      width: 320.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.8),
        unselectedLabelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
        ),
        tabs: const [
          Tab(
            child: Text(
              "Deskripsi",
            ),
          ),
          Tab(
            child: Text(
              "Lampiran",
            ),
          ),
        ],
      ),
    );
  }
}
