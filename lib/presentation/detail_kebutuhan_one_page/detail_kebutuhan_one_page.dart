import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/frame_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/detailkebutuhanone_item_widget.dart';
import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DetailKebutuhanOnePage extends StatefulWidget {
  const DetailKebutuhanOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailKebutuhanOnePageState createState() => DetailKebutuhanOnePageState();
}

class DetailKebutuhanOnePageState extends State<DetailKebutuhanOnePage>
    with AutomaticKeepAliveClientMixin<DetailKebutuhanOnePage> {
  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 8.v,
                        width: 24.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 18.h),
                      ),
                      SizedBox(height: 7.v),
                      _buildFrame(context),
                      SizedBox(height: 13.v),
                      SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 2,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 9,
                            activeDotColor:
                                theme.colorScheme.secondaryContainer,
                            dotColor: appTheme.gray300,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgDocumentLampiran,
                        height: 10.v,
                        width: 112.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 18.h),
                      ),
                      SizedBox(height: 7.v),
                      _buildDetailkebutuhanOne(context),
                      SizedBox(height: 189.v),
                      CustomElevatedButton(
                        text: "Apply",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 140.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return const FrameItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailkebutuhanOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 7.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return const DetailkebutuhanoneItemWidget();
        },
      ),
    );
  }
}
