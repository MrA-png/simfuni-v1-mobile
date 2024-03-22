import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_title.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:simfuni_v1/widgets/custom_text_form_field.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Step1FormApplyScreen extends StatelessWidget {
  Step1FormApplyScreen({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _buildAppBar(context),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pesan Pengajuan", style: CustomTextStyles.titleSmallInter),
              SizedBox(height: 5.v),
              _buildInput(context),
              SizedBox(height: 14.v),
              Text("Lokasi  Anda  berada", style: theme.textTheme.titleSmall),
              SizedBox(height: 7.v),
              _buildInput1(context),
              SizedBox(height: 14.v),
              Text("Jumlah", style: theme.textTheme.titleSmall),
              SizedBox(height: 7.v),
              _buildInput2(context),
              SizedBox(height: 14.v),
              _buildTwentyFive(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFloatingIcon,
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "Form Pengajuan Permintaan ",
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5.v),
          AppbarSubtitleTwo(
            text: "Step 1",
            margin: EdgeInsets.symmetric(horizontal: 80.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return CustomTextFormField(
      controller: inputController,
      hintText:
          "Jelaskan lebih rinci mengenai permintaan seperti apa permintaan yang anda butuhkan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10001,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
    );
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return CustomTextFormField(
        controller: inputController1,
        hintText: "masukkan alamat lokasi penerima",
        maxLines: 6);
  }

  /// Section Widget
  Widget _buildInput2(BuildContext context) {
    return CustomTextFormField(
        controller: inputController2,
        hintText: "Jumlah permintaan",
        hintStyle: CustomTextStyles.titleSmallBluegray10001);
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Harga Perkiraan Sendiri (HPS)",
                  style: theme.textTheme.titleSmall),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  controller: inputController3,
                  hintText: "Rp ",
                  hintStyle: CustomTextStyles.titleSmallPrimary,
                  textInputAction: TextInputAction.done)
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 6.h, top: 41.v, bottom: 15.v),
            child: Text("00,-", style: CustomTextStyles.titleSmallBlack900))
      ],
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(width: 150.h, text: "cancel");
  }

  /// Section Widget
  Widget _buildLanjutkan(BuildContext context) {
    return CustomElevatedButton(
      width: 150.h,
      text: "Lanjutkan",
      margin: EdgeInsets.only(left: 20.h),
      onPressed: () {
        onTapLanjutkan(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildCancel(context), _buildLanjutkan(context)],
      ),
    );
  }

  /// Navigates to the step2FormPermintaanOneScreen when the action is triggered.
  onTapLanjutkan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step2FormPenawaranScreen);
  }
}
