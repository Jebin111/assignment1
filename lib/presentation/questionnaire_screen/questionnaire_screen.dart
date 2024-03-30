import 'package:assignment2/widgets/app_bar/custom_app_bar.dart';
import 'package:assignment2/widgets/app_bar/appbar_leading_image.dart';
import 'package:assignment2/widgets/app_bar/appbar_title.dart';
import 'package:assignment2/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:assignment2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:assignment2/widgets/custom_text_form_field.dart';
import 'package:assignment2/widgets/custom_outlined_button.dart';
import 'package:assignment2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:assignment2/core/app_export.dart';

class QuestionnaireScreen extends StatelessWidget {
  QuestionnaireScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController yesController = TextEditingController();
  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: PageView(
          controller: _controller,
          children: <Widget>[ SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  height: 1.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 23.v),
                    child: Column(
                      children: [
                        _buildTwo(context),
                        SizedBox(height: 12.v),
                        _buildOne(context),
                        Spacer(),
                        SizedBox(height: 78.v),
                        _buildFive(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    height: 1.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 23.v),
                      child: Column(
                        children: [
                          SizedBox(height: 12.v),
                          _buildOne(context),
                          Spacer(),
                          SizedBox(height: 78.v),
                          _buildFive(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )





          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: (){}, backgroundColor: Colors.transparent, label: Text("hi"),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarTrailingImage(
        imagePath: ImageConstant.imageNotFound,
        margin: EdgeInsets.only(left: 20.h,
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
  Widget _buildTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Complete the questionnaire at your own pace",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            height: 15.v,
            width: 354.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 353.h,
                    child: Divider(),
                  ),
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
                            width: 6.h,
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
                            width: 15.adaptSize,
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
  Widget _buildOne(BuildContext context) {
    return Container(
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
              left: 10.h,
              right: 10.h,
            ),
            child: Text(
              "Have you ever been diagnosed with cancer? ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),



          FloatingActionButton.extended(onPressed: (){
          },label: Text('Yes'),),
          Container(
            width: MediaQuery.of(context).size.width,
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
                FloatingActionButton.extended(onPressed: (){
                },label: Text('Yes')),
                Text(
                  "No",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
    ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
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
