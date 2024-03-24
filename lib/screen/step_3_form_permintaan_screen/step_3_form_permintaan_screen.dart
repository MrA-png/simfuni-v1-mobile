import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_title.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

class Step3FormPermintaanScreen extends StatelessWidget {
  const Step3FormPermintaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Lampiran Pendukung",
                      style: CustomTextStyles.titleSmallInter)),
              SizedBox(height: 14.v),
              _buildUpload(context),
              SizedBox(height: 34.v),
              _buildUploadingFiles(context),
              const Spacer(),
              SizedBox(height: 35.v),
              _buildFrame(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgFloatingIcon,
          margin: EdgeInsets.only(left: 25.h, top: 5.v, bottom: 26.v),
          onTap: () {
            onTapFloatingIcon(context);
          }),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "Form Pengajuan Permintaan ",
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(height: 4.v),
          AppbarSubtitleThree(
            text: "Step 3",
            margin: EdgeInsets.only(left: 79.h, right: 94.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpload(BuildContext context) {
    return DottedBorder(
      color: appTheme.blueGray100,
      padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
      strokeWidth: 1.h,
      radius: const Radius.circular(12),
      borderType: BorderType.RRect,
      dashPattern: const [5, 5],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.h, vertical: 16.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgPaperUpload,
                height: 32.adaptSize,
                width: 32.adaptSize),
            SizedBox(height: 17.v),
            RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: " "),
                    TextSpan(
                      text: "choose file to upload",
                      style: CustomTextStyles.titleSmallInterff156cf7,
                    ),
                  ],
                ),
                textAlign: TextAlign.left),
            SizedBox(height: 7.v),
            Text(
              "Select file (PDF, EXCEL)",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadingFiles(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
      decoration: AppDecoration.fillGray10001
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(imagePath: ImageConstant.imgGrid),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h, top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wireframing_11_01_2024.word",
                    style: theme.textTheme.labelLarge),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Text("92 kb", style: theme.textTheme.bodySmall),
                    Container(
                      height: 5.adaptSize,
                      width: 5.adaptSize,
                      margin: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 5.v),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "4 second left",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcon24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            radius: BorderRadius.circular(12.h),
            margin: EdgeInsets.only(left: 26.h, top: 1.v, bottom: 9.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: "cancel",
            margin: EdgeInsets.only(right: 10.h),
            onPressed: () {
              onTapCancel(context);
            },
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Kirim",
            margin: EdgeInsets.only(left: 10.h),
          ),
        ),
      ],
    );
  }

  /// Navigates to the step2FormPermintaanOneScreen when the action is triggered.
  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step2FormPermintaanOneScreen);
  }

  /// Navigates to the step2FormPermintaanOneScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step2FormPermintaanOneScreen);
  }
}
