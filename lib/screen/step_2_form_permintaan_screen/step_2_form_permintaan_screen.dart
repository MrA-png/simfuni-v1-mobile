import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

class Step2FormPermintaanScreen extends StatelessWidget {
  const Step2FormPermintaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "Foto Pendukung",
                    style: CustomTextStyles.titleSmallInter,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildUpload(context),
              SizedBox(height: 35.v),
              _buildUploadingFiles(context),
              SizedBox(height: 25.v),
              _buildUploadingFiles1(context),
              const Spacer(),
              SizedBox(height: 24.v),
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
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(text: "Form Pengajuan Permintaan "),
          SizedBox(height: 7.v),
          AppbarSubtitleThree(
            text: "Step 2",
            margin: EdgeInsets.only(left: 80.h, right: 79.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpload(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: DottedBorder(
        color: appTheme.blueGray100,
        padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
        strokeWidth: 1.h,
        radius: const Radius.circular(12),
        borderType: BorderType.RRect,
        dashPattern: const [5, 5],
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 16.v),
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
                  text: TextSpan(children: [
                    const TextSpan(text: " "),
                    TextSpan(
                        text: "choose file to upload",
                        style: CustomTextStyles.titleSmallInterff156cf7)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 7.v),
              Text("Select image (PNG, JPG, JPEG)",
                  style: theme.textTheme.bodyMedium)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadingFiles(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
      decoration: AppDecoration.fillGray10001
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(imagePath: ImageConstant.imgGrid),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wireframing_11_01_2024.word",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      children: [
                        Text("92 kb", style: theme.textTheme.bodySmall),
                        Container(
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin:
                              EdgeInsets.only(left: 8.h, top: 4.v, bottom: 5.v),
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
                margin: EdgeInsets.only(left: 26.h, bottom: 9.v),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Container(
            height: 6.v,
            width: 262.h,
            decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadius.circular(3.h)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3.h),
              child: LinearProgressIndicator(
                value: 0.51,
                backgroundColor: theme.colorScheme.onErrorContainer,
                valueColor: AlwaysStoppedAnimation<Color>(
                  theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadingFiles1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
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
                Text(
                  "Wireframing_11_01_2024.word",
                  style: theme.textTheme.labelLarge,
                ),
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
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
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
              text: "Lanjutkan",
              margin: EdgeInsets.only(left: 10.h),
              onPressed: () {
                onTapLanjutkan(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the step1FormApplyScreen when the action is triggered.
  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step1FormApplyScreen);
  }

  /// Navigates to the step1FormApplyScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step1FormApplyScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLanjutkan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
