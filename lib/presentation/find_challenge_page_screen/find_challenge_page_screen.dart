import 'package:trail_app/widgets/app_bar/custom_app_bar.dart';
import 'package:trail_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:trail_app/widgets/app_bar/appbar_title.dart';
import 'package:trail_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trail_app/core/app_export.dart';

class FindChallengePageScreen extends StatelessWidget {
  const FindChallengePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse758,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    radius: BorderRadius.circular(12.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 9.h, top: 4.v, bottom: 3.v),
                                    child: Text("Jyoti Prasad",
                                        style: CustomTextStyles
                                            .labelLargeBlack90013))
                              ])),
                          SizedBox(height: 9.v),
                          _buildEight(context),
                          SizedBox(height: 14.v),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("3 Day Figma design Learn Challenge",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 9.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 323.h,
                                  margin:
                                      EdgeInsets.only(left: 20.h, right: 31.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "Heyhey.net - Free Download for Games & ApAnd",
                                            style: theme.textTheme.titleSmall),
                                        TextSpan(
                                            text:
                                                " Free Download for Games ...",
                                            style: theme.textTheme.titleSmall)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 13.v),
                          _buildShowChallenge(context),
                          SizedBox(height: 20.v),
                          Divider(),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse758,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    radius: BorderRadius.circular(12.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 9.h, top: 4.v, bottom: 4.v),
                                    child: Text("Jyoti Prasad",
                                        style: CustomTextStyles
                                            .labelLargeBlack900))
                              ])),
                          SizedBox(height: 9.v),
                          _buildFour(context),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("3 Day Figma design Learn Challenge",
                                  style: theme.textTheme.labelLarge)),
                          SizedBox(height: 4.v),
                          Container(
                              width: 281.h,
                              margin: EdgeInsets.only(left: 21.h, right: 72.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                            "Heyhey.net - Free Download for Games & ApAnd",
                                        style: theme.textTheme.labelMedium),
                                    TextSpan(
                                        text: " Free Download for Games ...",
                                        style: theme.textTheme.labelMedium)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 1.v),
                          _buildShowChallenge1(context),
                          Divider()
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Find Challenges", margin: EdgeInsets.only(left: 18.h)));
  }

  /// Section Widget
  Widget _buildParticipants12(BuildContext context) {
    return CustomElevatedButton(
        width: 97.h,
        text: "Participants: 12",
        margin: EdgeInsets.only(top: 9.v),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        alignment: Alignment.topRight);
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 176.v,
            width: 335.h,
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle4864,
                  height: 176.v,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.center),
              _buildParticipants12(context)
            ])));
  }

  /// Section Widget
  Widget _buildShowChallenge(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        text: "Show challenge ",
        margin: EdgeInsets.only(left: 20.h, right: 19.h),
        buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
        onPressed: () {
          onTapShowChallenge(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildParticipants13(BuildContext context) {
    return CustomElevatedButton(
        width: 87.h,
        text: "Participants: 12",
        buttonStyle: CustomButtonStyles.fillWhiteATL5,
        buttonTextStyle: theme.textTheme.labelSmall!);
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 335.h,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            padding: EdgeInsets.symmetric(vertical: 9.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: _buildParticipants13(context)));
  }

  /// Section Widget
  Widget _buildShowChallenge1(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        text: "Show challenge ",
        margin: EdgeInsets.only(left: 21.h, right: 19.h),
        buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
        alignment: Alignment.center);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the dialogBoxScreen when the action is triggered.
  onTapShowChallenge(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dialogBoxScreen);
  }
}
