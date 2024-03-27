import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';
import 'package:simfuni_v1/helper/penawaran_helper.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/custom_text_form_field.dart';
import 'package:simfuni_v1/widgets/custom_outlined_button.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';

class Step1FormPenawaranScreen extends StatelessWidget {
  Step1FormPenawaranScreen({Key? key}) : super(key: key);
  PenawaranHelper penawaranHelper = PenawaranHelper();
  TextEditingController inputControllerJudul = TextEditingController();
  TextEditingController inputControllerTentang = TextEditingController();
  TextEditingController inputControllerAlamat = TextEditingController();
  TextEditingController inputControllerJumlah = TextEditingController();
  TextEditingController inputControllerHPS = TextEditingController();

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
                  _buildInputJudul(context),
                  SizedBox(height: 16.v),
                  Text("Tentang Penawaran",
                      style: CustomTextStyles.titleSmallInter),
                  SizedBox(height: 5.v),
                  _buildInputTentang(context),
                  SizedBox(height: 14.v),
                  Text("Alamat", style: CustomTextStyles.titleSmallInter),
                  SizedBox(height: 7.v),
                  _buildInputAlamat(context),
                  SizedBox(height: 14.v),
                  Text("Jumlah", style: CustomTextStyles.titleSmallInter),
                  SizedBox(height: 7.v),
                  _buildInputJumlah(context),
                  SizedBox(height: 14.v),
                  Text("Harga Perkiraan Sendiri (HPS)",
                      style: CustomTextStyles.titleSmallInter),
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
            text: "Step 1",
            margin: EdgeInsets.only(left: 87.h, right: 88.h),
          ),
        ],
      ),
    );
  }

  Widget _buildInputJudul(BuildContext context) {
    return CustomTextFormField(
      controller: inputControllerJudul,
      hintText: "Judul penawaran",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
    );
  }

  Widget _buildInputTentang(BuildContext context) {
    return CustomTextFormField(
      controller: inputControllerTentang,
      hintText:
          "Jelaskan lebih rinci mengenai penawaran seperti apa penawaran  yang anda tawarkan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      maxLines: 7,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
    );
  }

  Widget _buildInputAlamat(BuildContext context) {
    return CustomTextFormField(
      controller: inputControllerAlamat,
      hintText: "masukkan alamat lokasi stok berada",
      maxLines: 6,
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 13.v,
      ),
    );
  }

  Widget _buildInputJumlah(BuildContext context) {
    return CustomTextFormField(
      controller: inputControllerJumlah,
      hintText: "Jumlah permintaan",
      hintStyle: CustomTextStyles.titleSmallInterBluegray10004,
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue50,
    );
  }

  Widget _buildInputHPS(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: inputControllerHPS,
        hintText: "Rp ",
        hintStyle: CustomTextStyles.titleSmallPrimary,
        borderDecoration: TextFormFieldStyleHelper.fillBlue,
        fillColor: appTheme.blue50,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _buildFrame(BuildContext context) {
    return Row(
      children: [
        _buildInputHPS(context),
        Padding(
          padding: EdgeInsets.only(left: 6.h, top: 14.v, bottom: 14.v),
          child: Text(
            "00,-",
            style: CustomTextStyles.titleSmallBlack900,
          ),
        )
      ],
    );
  }

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

  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCancel(context),
        _buildLanjutkan(context),
      ],
    );
  }

  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pengajuanScreen);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pengajuanScreen);
  }

  onTapLanjutkan(BuildContext context) async {
    try {
      await penawaranHelper.postData(
        inputControllerJudul.text,
        inputControllerTentang.text,
        inputControllerAlamat.text,
        int.tryParse(inputControllerJumlah.text) ?? 0,
        int.tryParse(inputControllerHPS.text) ?? 0,
        context,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Penawaran berhasil ditambahkan'),
        ),
      );

      // Navigator.pushNamed(context, AppRoutes.step2FormPenawaranScreen);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal menambahkan penawaran: $e')),
      );
    }
  }
}
