import 'package:assignment2/widgets/app_bar/custom_app_bar.dart';
import 'package:assignment2/widgets/app_bar/appbar_leading_image.dart';
import 'package:assignment2/widgets/app_bar/appbar_title.dart';
import 'package:assignment2/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:assignment2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:assignment2/widgets/custom_text_form_field.dart';
import 'package:assignment2/widgets/custom_outlined_button.dart';
import 'package:assignment2/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment2/core/app_export.dart';
import 'package:flutter/widgets.dart';

class firstpage extends StatelessWidget {
  firstpage({Key? key})
      : super(
    key: key,
  );

  //TextEditingController yesController = TextEditingController();
  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          //controller: _controller,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  //width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                  //padding: EdgeInsets.symmetric(vertical: 5.v),
                ),
                _topText(context),
                Expanded(
                  child: PageView(controller: _controller,
                    children: <Widget>[
                    Container(
                    padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                    ),
                      decoration: AppDecoration.fillGray,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 3.h,
                              right: 3.h,
                            ),
                            child: Text(
                          "1. Have you ever been diagnosed with cancer? ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeBlack900,
                        ),
                      ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.h,
                            margin: EdgeInsets.only(top: 30.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 26.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillBlueGrayBf.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Yes",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                        margin: EdgeInsets.only(top: 10.h,bottom: 10.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 26.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillBlueGrayBf.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("No",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.v),
                    ],
                  ),
                ),
                    Container(

                    )],
                  ),
                ),
                _nextPrev(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 40.h,
      leading: AppbarTrailingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 30.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "My Cancer Risk Assessment",
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgAvatar,
          margin: EdgeInsets.only(left: 20.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage4,
          margin: EdgeInsets.only(
            left: 17.h,
            right: 20.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _topText(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h,top: 10.v),
            child: Text(
              "Complete the questionnaire at your own pace",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 3.h,top: 10.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(int.parse('#DC7D57'.substring(1), radix: 16) + 0xFF000000)),
                  backgroundColor: Colors.grey[300],
                  value: 0.028,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 15.v,
                    width: 16.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 5.v,
                            width: 5.h,
                            decoration: BoxDecoration(
                              color: appTheme.red30001,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillRed.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Text(
                              "1".toUpperCase(),
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "1/37 questions answered",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }


  /// Section Widget
  Widget _nextPrev(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h,right: 16.h,bottom: 130.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            width: 149.h,
            text: "Previous",
          ),
          CustomElevatedButton(
            width: 190.h,
            text: "Next",
          ),
        ],
      ),
    );
  }
}
