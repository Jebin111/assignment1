import 'package:trail_app/widgets/app_bar/custom_app_bar.dart';
import 'package:trail_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:trail_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:trail_app/widgets/custom_text_form_field.dart';
import 'package:trail_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trail_app/core/app_export.dart';

class DialogBoxScreen extends StatelessWidget {
  DialogBoxScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController shareyourfeelingongrController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 309.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgYoungManWorking,
                width: 85.h,
              ),
              Container(
                height: 6.v,
                width: 174.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(
                    87.h,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomTextFormField(
                controller: shareyourfeelingongrController,
                hintText:
                    "Share your feeling on group to encourage other participants ",
                textInputAction: TextInputAction.done,
                maxLines: 3,
              ),
              SizedBox(height: 9.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildPost(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      title: AppbarSubtitle(
        text: "Keep putting effort, Proud of you",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.all(12.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPost(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      text: "Post",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 27.v,
      ),
      buttonStyle: CustomButtonStyles.fillBlueA,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700Bold,
    );
  }
}
