import 'package:simfuni_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:simfuni_v1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

class PengajuanScreen extends StatelessWidget {
  const PengajuanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _buildAppBar(context),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
          child: Column(children: [
            _buildPengajuanPermintaan(context),
            SizedBox(height: 13.v),
            _buildPengajuanPenawaran(context),
            SizedBox(height: 5.v)
          ]),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 71.v,
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgFloatingIcon,
          // margin: EdgeInsets.only(left: 25.h, top: 20.v, bottom: 27.v),
          onTap: () {
            onTapFloatingIcon(context);
          },
        ),
        centerTitle: true,
        title: const AppbarSubtitleTwo(
          text: "Pengajuan",
          fontSize: 16,
        ),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildPengajuanPermintaan(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
      decoration: AppDecoration.fillOnErrorContainer
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 163.h,
              child: Text("Pengajuan \nPermintaan (Demand)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBlack900_1),
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 278.h,
            margin: EdgeInsets.only(right: 5.h),
            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            "Anda yang membutuhkan barang atau jasa tertentu dapat menggunakan fitur ini untuk mengajukan permintaan.\nPermintaan ini bisa berupa kebutuhan akan bahan baku, keahlian khusus yang diperlukan untuk pengerjaan suatu proyek, atau barang lainnya yang diperlukan untuk keperluan tertentu. ",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text: " ",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text: "Seperti contoh : ",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text:
                            "membutuhkan bahan baku rotan 1 ton yang berdiameter 5 cm",
                        style: CustomTextStyles.bodySmallPoppinscc000000
                            .copyWith(decoration: TextDecoration.underline)),
                    const TextSpan(text: " "),
                    TextSpan(
                        text: "atau ",
                        style: CustomTextStyles.labelMediumcc000000),
                    TextSpan(
                      text:
                          "kebutuhan pengrajin untuk 1 set meja makan terbuat dari bambu.\nDalam fitur ini Anda bisa memberikan detail lengkap mengenai jenis barang atau jasa yang perlukan, jumlah atau kuantitas yang diinginkan, dan spesifikasi teknis seperti apa yang diperlukan.",
                      style: CustomTextStyles.bodySmallPoppinscc000000
                          .copyWith(decoration: TextDecoration.underline),
                    )
                  ],
                ),
                textAlign: TextAlign.left),
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 34.v,
            width: 191.h,
            text: "Ajukan Permintaan",
            buttonTextStyle:
                CustomTextStyles.labelLargePoppinsOnErrorContainerSemiBold,
            onPressed: () {
              // onTapAjukanPermintaan(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPengajuanPenawaran(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
      decoration: AppDecoration.fillOnErrorContainer
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 156.h,
              child: Text(
                "Pengajuan \nPenawaran (Supplay)",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 280.h,
            child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            "Anda dapat menawarkan barang atau jasa yang dimiliki untuk dijual atau ditawarkan kepada pengguna lain yang mungkin membutuhkannya.\n",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text: "Pe",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text:
                            "nawaran ini bisa berupa barang atau stok yang dimiliki bisa berupa bahan baku seperti : kayu, Rotan, Bamdu, ataupun material lainnya",
                        style: CustomTextStyles.bodySmallPoppinscc00000010),
                    TextSpan(
                        text:
                            ". \nAnda juga bisa menawarkan jasa untuk pembuatan funiture tertentu dengan menawarkan proyek yang pernah dikerjakan.",
                        style: CustomTextStyles.bodySmallPoppinscc00000010)
                  ],
                ),
                textAlign: TextAlign.left),
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 34.v,
            width: 188.h,
            text: "Ajukan Penawaran",
            buttonTextStyle:
                CustomTextStyles.labelLargePoppinsOnErrorContainerSemiBold,
            onPressed: () {
              onTapAjukanPenawaran(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapFloatingIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the step1FormPermintaanScreen when the action is triggered.
  // onTapAjukanPermintaan(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.step1FormPermintaanScreen);
  // }

  /// Navigates to the step1FormPenawaranScreen when the action is triggered.
  onTapAjukanPenawaran(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.step1FormPenawaranScreen);
  }
}
