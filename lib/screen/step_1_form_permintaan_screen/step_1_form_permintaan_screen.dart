import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_title.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:simfuni_v1/widgets/custom_text_form_field.dart';
import 'package:simfuni_v1/widgets/custom_checkbox_button.dart';
import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Step1FormPermintaanScreen extends StatelessWidget {
  Step1FormPermintaanScreen({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  bool settings = false;

  bool settings1 = false;

  TextEditingController lainnyaController = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
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
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Judul Pengajuan",
                          style: CustomTextStyles.titleSmallInter,
                        ),
                        SizedBox(height: 5.v),
                        _buildInput(context),
                        SizedBox(height: 16.v),
                        Text(
                          "Tentang Pengajuan",
                          style: CustomTextStyles.titleSmallInter,
                        ),
                        SizedBox(height: 5.v),
                        _buildInput1(context),
                        SizedBox(height: 14.v),
                        Text(
                          "Alamat",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 7.v),
                        _buildInput2(context),
                        SizedBox(height: 15.v),
                        Text(
                          "Requiment",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.v),
                        _buildSettings(context),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(right: 83.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgSettingsOnerrorcontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 18.h, top: 5.v, bottom: 3.v),
                                child: Text(
                                  "Memiliki Pengalaman minimal 3 tahun",
                                  style: CustomTextStyles
                                      .labelMediumBlack900Medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.v),
                        _buildSettings1(context),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(right: 37.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgSettingsOnerrorcontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 3.v,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 240.h,
                                  margin: EdgeInsets.only(left: 18.h),
                                  child: Text(
                                    "Memiliki NIB Nomor Induk Berusaha yang masih berlaku",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelMediumBlack900Medium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildFrame(context),
                        SizedBox(height: 12.v),
                        CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillBlue,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlusCircle,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Text("Jumlah", style: theme.textTheme.titleSmall),
                        SizedBox(height: 7.v),
                        _buildInput3(context),
                        SizedBox(height: 14.v),
                        _buildTwentyFive(context)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame1(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgFloatingIcon,
          // margin: EdgeInsets.only(left: 25.h, top: 5.v, bottom: 26.v),
          onTap: () {
            onTapFloatingIcon(context);
          }),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(text: "Form Pengajuan Permintaan  "),
          SizedBox(height: 7.v),
          AppbarSubtitleThree(
            text: "Step 1",
            margin: EdgeInsets.only(left: 87.h, right: 88.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return CustomTextFormField(
        controller: inputController,
        hintText: "Judul Pengajuan",
        hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
        borderDecoration: TextFormFieldStyleHelper.fillBlue,
        fillColor: appTheme.blue50);
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return CustomTextFormField(
      controller: inputController1,
      hintText:
          "Jelaskan lebih rinci mengenai permintaan seperti apa permintaan yang anda butuhkan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10001,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
    );
  }

  /// Section Widget
  Widget _buildInput2(BuildContext context) {
    return CustomTextFormField(
        controller: inputController2,
        hintText: "masukkan alamat lokasi penerima",
        maxLines: 6);
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return CustomCheckboxButton(
      text:
          "Memiliki identitas kewarganegaraan Indonesia seperti Kartu Tanda Penduduk (KTP)/Paspor/Surat Keterangan Domisili Tinggal.",
      isExpandedText: true,
      value: settings,
      onChange: (value) {
        settings = value;
      },
    );
  }

  /// Section Widget
  Widget _buildSettings1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.h),
      child: CustomCheckboxButton(
        text: "Mempunyai status valid keterangan Wajib Pajak / NPWP",
        isExpandedText: true,
        value: settings1,
        onChange: (value) {
          settings1 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLainnya(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: CustomTextFormField(
          controller: lainnyaController,
          hintText: "Lainnya",
          hintStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
          borderDecoration: TextFormFieldStyleHelper.underLineBlue,
          filled: false,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSettingsOnerrorcontainer,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
        _buildLainnya(context)
      ],
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
                  controller: inputController4,
                  hintText: "Rp ",
                  hintStyle: CustomTextStyles.titleSmallPrimary,
                  textInputAction: TextInputAction.done)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h, top: 41.v, bottom: 15.v),
          child: Text("00,-", style: CustomTextStyles.titleSmallBlack900),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(
      width: 150.h,
      text: "cancel",
      onPressed: () {
        onTapCancel(context);
      },
    );
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
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 27.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildCancel(context), _buildLanjutkan(context)],
      ),
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

  /// Navigates to the step2FormPermintaanOneScreen when the action is triggered.
  onTapLanjutkan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step2FormPermintaanScreen);
  }
}
