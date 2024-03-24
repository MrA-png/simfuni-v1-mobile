import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_title.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:simfuni_v1/widgets/custom_text_form_field.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Step1FormPenawaranScreen extends StatelessWidget {
  Step1FormPenawaranScreen({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Judul Penawaran",
                      style: CustomTextStyles.titleSmallInter),
                  SizedBox(height: 6.v),
                  _buildInput(context),
                  SizedBox(height: 16.v),
                  Text("Tentang Penawaran",
                      style: CustomTextStyles.titleSmallInter),
                  SizedBox(height: 5.v),
                  _buildInput1(context),
                  SizedBox(height: 14.v),
                  Text("Alamat", style: theme.textTheme.titleSmall),
                  SizedBox(height: 7.v),
                  _buildInput2(context),
                  SizedBox(height: 14.v),
                  Text("Jumlah", style: theme.textTheme.titleSmall),
                  SizedBox(height: 7.v),
                  _buildInput3(context),
                  SizedBox(height: 14.v),
                  Text("Harga Perkiraan Sendiri (HPS)",
                      style: theme.textTheme.titleSmall),
                  SizedBox(height: 7.v),
                  _buildFrame(context),
                  SizedBox(height: 77.v),
                  _buildFrame1(context)
                ],
              ),
            ),
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
          AppbarTitle(
            text: "Form Pengajuan Penawaran ",
            style: const TextStyle(fontSize: 8),
          ),
          SizedBox(height: 6.v),
          AppbarSubtitleFour(
            text: "Step 1",
            margin: EdgeInsets.only(left: 87.h, right: 86.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return CustomTextFormField(
        controller: inputController,
        hintText: "Judul penawaran",
        hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
        borderDecoration: TextFormFieldStyleHelper.fillBlue,
        fillColor: appTheme.blue50);
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return CustomTextFormField(
      controller: inputController1,
      hintText:
          "Jelaskan lebih rinci mengenai penawaran seperti apa penawaran  yang anda tawarkan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10001,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v),
    );
  }

  /// Section Widget
  Widget _buildInput2(BuildContext context) {
    return CustomTextFormField(
      controller: inputController2,
      hintText: "masukkan alamat lokasi stok berada",
      maxLines: 6,
      contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
    );
  }

  /// Section Widget
  Widget _buildInput3(BuildContext context) {
    return CustomTextFormField(
        controller: inputController3,
        hintText: "Jumlah permintaan",
        hintStyle: CustomTextStyles.titleSmallBluegray10001);
  }

  /// Section Widget
  Widget _buildInput4(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
          controller: inputController4,
          hintText: "Rp ",
          hintStyle: CustomTextStyles.titleSmallPrimary,
          textInputAction: TextInputAction.done),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      children: [
        _buildInput4(context),
        Padding(
          padding: EdgeInsets.only(left: 6.h, top: 14.v, bottom: 14.v),
          child: Text("00,-", style: CustomTextStyles.titleSmallBlack900),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "cancel",
        margin: EdgeInsets.only(right: 10.h),
        onPressed: () {
          onTapCancel(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLanjutkan(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Lanjutkan",
        margin: EdgeInsets.only(left: 10.h),
        onPressed: () {
          onTapLanjutkan(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCancel(context),
        _buildLanjutkan(context),
      ],
    );
  }

  /// Navigates to the pengajuanScreen when the action is triggered.
  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pengajuanScreen);
  }

  /// Navigates to the pengajuanScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pengajuanScreen);
  }

  /// Navigates to the step2FormPenawaranScreen when the action is triggered.
  onTapLanjutkan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step2FormPenawaranScreen);
  }
}
