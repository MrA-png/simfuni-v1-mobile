import 'package:simfuni_v1/widgets/custom_icon_button.dart';
import 'package:simfuni_v1/widgets/custom_text_form_field.dart';
import 'widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController threeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrame(context),
                  SizedBox(height: 5.v),
                  _buildHome(context)
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
                    child: Text("Simfuni", style: theme.textTheme.titleLarge)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 18.v,
                    width: 14.h,
                    margin: EdgeInsets.symmetric(vertical: 8.v)),
                Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: CustomIconButton(
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillBlueGray,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgContrastBlueGray90001))),
                CustomImageView(
                    imagePath: ImageConstant.imgContrastBlueGray10001,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 27.h, top: 8.v, bottom: 8.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 27.h, top: 5.v, bottom: 5.v))
              ])),
          SizedBox(height: 15.v),
          Divider(color: appTheme.gray100),
          SizedBox(height: 14.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomTextFormField(
                    controller: threeController,
                    hintText: "apa yang anda butuhkan atau tawarkan",
                    textInputAction: TextInputAction.done)),
            Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: CustomIconButton(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillBlueGrayTL10,
                    child: CustomImageView(imagePath: ImageConstant.imgPlus)))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return HomeItemWidget(onTapOpen: () {
                onTapOpen(context);
              });
            }));
  }

  /// Navigates to the detailKebutuhanTabContainerScreen when the action is triggered.
  onTapOpen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailKebutuhanTabContainerScreen);
  }
}
