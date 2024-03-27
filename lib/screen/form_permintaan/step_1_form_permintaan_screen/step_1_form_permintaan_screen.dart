// ignore_for_file: unused_element

import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
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

  bool ktp = false;

  bool wajibPajak = false;

  bool pengalaman = false;

  bool nib = false;

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
                        _buildInputJudul(context),
                        SizedBox(height: 16.v),
                        Text(
                          "Tentang Pengajuan",
                          style: CustomTextStyles.titleSmallInter,
                        ),
                        SizedBox(height: 5.v),
                        _buildInputTentang(context),
                        SizedBox(height: 14.v),
                        Text(
                          "Alamat",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 7.v),
                        _buildInputAlamat(context),
                        SizedBox(height: 15.v),
                        Text(
                          "Requirement",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.v),
                        _buildInputIndentitas(context),
                        SizedBox(height: 4.v),
                        _buildPengalaman(context),
                        SizedBox(height: 4.v),
                        _buildSettings1(context),
                        SizedBox(height: 4.v),
                        _buildNib(context),
                        SizedBox(height: 4.v),
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
                        _buildInputJumlah(context),
                        SizedBox(height: 14.v),
                        _buildInputHPS(context)
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
  Widget _buildInputJudul(BuildContext context) {
    return CustomTextFormField(
      controller: inputController,
      hintText: "Judul Pengajuan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
    );
  }

  /// Section Widget
  Widget _buildInputTentang(BuildContext context) {
    return CustomTextFormField(
      controller: inputController1,
      hintText:
          "Jelaskan lebih rinci mengenai permintaan seperti apa permintaan yang anda butuhkan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
    );
  }

  /// Section Widget
  Widget _buildInputAlamat(BuildContext context) {
    return CustomTextFormField(
      controller: inputController2,
      hintText: "masukkan alamat lokasi penerima",
      maxLines: 6,
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
    );
  }

  /// Section Widget
  Widget _buildInputIndentitas(BuildContext context) {
    return CustomCheckboxButton(
      text:
          "Memiliki identitas kewarganegaraan Indonesia seperti Kartu Tanda Penduduk (KTP)/Paspor/Surat Keterangan Domisili Tinggal.",
      isExpandedText: true,
      value: ktp,
      onChange: (value) {
        ktp = value;
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
        value: wajibPajak,
        onChange: (value) {
          wajibPajak = value;
        },
      ),
    );
  }

  Widget _buildPengalaman(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.h),
      child: CustomCheckboxButton(
        text: "Memiliki Pengalaman minimal 3 tahun",
        isExpandedText: true,
        value: pengalaman,
        onChange: (value) {
          pengalaman = value;
        },
      ),
    );
  }

  Widget _buildNib(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.h),
      child: CustomCheckboxButton(
        text: "Memiliki NIB Nomor Induk Berusaha yang masih berlaku",
        isExpandedText: true,
        value: nib,
        onChange: (value) {
          nib = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLainnya(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: lainnyaController,
        hintText: "Lainnya",
        hintStyle: CustomTextStyles.titleSmallPrimary.copyWith(
          fontSize: 12,
        ),
        borderDecoration: TextFormFieldStyleHelper.underLineBlue,
        filled: false,
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
  Widget _buildInputJumlah(BuildContext context) {
    return CustomTextFormField(
      controller: inputController3,
      hintText: "Jumlah permintaan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
    );
  }

  /// Section Widget
  Widget _buildInputHPS(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harga Perkiraan Sendiri (HPS)",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 7.v),
              CustomTextFormField(
                controller: inputController4,
                hintText: "Rp ",
                hintStyle: CustomTextStyles.titleSmallPrimary,
                borderDecoration: TextFormFieldStyleHelper.fillBlue,
                fillColor: appTheme.blue50,
                textInputAction: TextInputAction.done,
              )
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
