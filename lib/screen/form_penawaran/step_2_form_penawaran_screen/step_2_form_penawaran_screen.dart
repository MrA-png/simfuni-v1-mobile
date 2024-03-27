// ignore_for_file: library_private_types_in_public_api
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:intl/intl.dart';

class Step2FormPenawaranScreen extends StatefulWidget {
  const Step2FormPenawaranScreen({Key? key}) : super(key: key);

  @override
  _Step2FormPenawaranScreenState createState() =>
      _Step2FormPenawaranScreenState();
}

class _Step2FormPenawaranScreenState extends State<Step2FormPenawaranScreen> {
  String? _fileName;
  int? _fileSize;
  String? _uploadDate;

  Future<void> _chooseImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final File imageFile = File(pickedImage.path);
      final int fileSize = await imageFile.length();
      final DateTime uploadTime = DateTime.now();
      final String fileName = pickedImage.path.split('/').last;

      final DateFormat formatter = DateFormat('dd MMMM yyyy', 'id_ID');
      final formattedDate = formatter.format(uploadTime.toLocal());

      setState(() {
        _fileName = fileName;
        _fileSize = fileSize;
        _uploadDate = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _buildAppBar(context),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Foto Pendukung",
                  style: CustomTextStyles.titleSmallInter,
                ),
              ),
              SizedBox(height: 14.v),
              GestureDetector(
                onTap: () => _chooseImage(context),
                child: _buildUpload(context),
              ),
              SizedBox(height: 35.v),
              if (_fileName != null && _fileSize != null && _uploadDate != null)
                _buildUploadingFiles(
                  context,
                  _fileName!,
                  _fileSize!,
                  _uploadDate!,
                ),
              const Spacer(),
              SizedBox(height: 34.v),
              _buildFrame(context),
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
        onTap: () {
          onTapFloatingIcon(context);
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(text: "Form Pengajuan Penawaran"),
          SizedBox(height: 6.v),
          AppbarSubtitleThree(
            text: "Step 2",
            margin: EdgeInsets.only(left: 87.h, right: 88.h),
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
              width: 32.adaptSize,
            ),
            SizedBox(height: 17.v),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(text: " "),
                  TextSpan(
                    text: "choose file to upload",
                    style: CustomTextStyles.titleSmallInterff156cf7,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 7.v),
            Text(
              "Select image (PNG, JPG, JPEG)",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadingFiles(BuildContext context, String fileName,
      int fileSize, String uploadDate) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
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
                      fileName,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      children: [
                        Text(
                          '${(fileSize / 1024).toStringAsFixed(2)} kb',
                          style: theme.textTheme.bodySmall,
                        ),
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
                            uploadDate,
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
                height: 22.adaptSize,
                width: 22.adaptSize,
                radius: BorderRadius.circular(12.h),
                margin: EdgeInsets.only(left: 26.h, bottom: 9.v),
              ),
            ],
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
            text: "Lanjutkan",
            margin: EdgeInsets.only(left: 10.h),
            onPressed: () {
              onTapLanjutkan(context);
            },
          ),
        ),
      ],
    );
  }

  /// Navigates to the step1FormPenawaranScreen when the action is triggered.
  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step1FormPenawaranScreen);
  }

  /// Navigates to the step1FormPenawaranScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step1FormPenawaranScreen);
  }

  /// Navigates to the step3FormPenawaranScreen when the action is triggered.
  onTapLanjutkan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step3FormPenawaranScreen);
  }
}
