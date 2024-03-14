import 'package:simfuni_v1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DetailKebutuhanPage extends StatefulWidget {
  const DetailKebutuhanPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailKebutuhanPageState createState() => DetailKebutuhanPageState();
}

class DetailKebutuhanPageState extends State<DetailKebutuhanPage>
    with AutomaticKeepAliveClientMixin<DetailKebutuhanPage> {
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
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tentang",
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 5.v),
                            SizedBox(
                              width: 279.h,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallIstokWebGray800,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Divider(),
                            SizedBox(height: 8.v),
                            Text(
                              "Lokasi Pengerjaan",
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 8.v),
                            Container(
                              width: 264.h,
                              margin: EdgeInsets.only(right: 20.h),
                              child: Text(
                                "Gd. Madiun Lt. 6 Bappenas Jalan Taman Suropati No. 2 Menteng - Jakarta Pusat - Jakarta Pusat (Kota)",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallIstokWebGray800,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Divider(),
                            SizedBox(height: 8.v),
                            Text(
                              "Requirements",
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 8.v),
                            Container(
                              width: 271.h,
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book\nLorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallIstokWebGray800,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            Divider(),
                            SizedBox(height: 8.v),
                            Padding(
                              padding: EdgeInsets.only(right: 5.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "Jumlah kebutuhan",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Text(
                                    "10.0000 pcs",
                                    style: CustomTextStyles.labelLargeGray800,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 17.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
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
}
