import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:relaks_media_admin/screens/Landing/controller/landing_controller.dart';
import 'package:relaks_media_admin/screens/access_insight/view/access_insight_screen.dart';
import 'package:relaks_media_admin/screens/audio_content/view/audio_content_screen.dart';
import 'package:relaks_media_admin/screens/news/view/news_screen.dart';
import 'package:relaks_media_admin/screens/other_services_management/view/other_services_management_screen.dart';
import 'package:relaks_media_admin/screens/payment/view/payment_screen.dart';
import 'package:relaks_media_admin/screens/program_planning/view/program_planning_screen.dart';
import 'package:relaks_media_admin/utils/app_styles.dart';
import 'package:relaks_media_admin/utils/responsive_layout.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LandingController landingController = Get.put(LandingController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: ResponsiveLayout(
          desktopview: Row(
            children: [
              buildLeftLayout(landingController),
              buildRightLayout(landingController)
            ],
          ),
          tabletview: Container(),
          mobileview: Container()),
    );
  }

  Expanded buildRightLayout(LandingController landingController) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 120.h,
            color: Colors.grey,
            child: Center(
              child: Text('App bar', style: AppStyles().normalTextStyle,),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (landingController.currentScreen.value == 1) {
                return const ProgramPlanningScreen();
              }
              if (landingController.currentScreen.value == 2) {
                return const AccessInsightScreen();
              }
              if (landingController.currentScreen.value == 3) {
                return const AudioContentScreen();
              }
              if (landingController.currentScreen.value == 4) {
                return const NewsScreen();
              }
              if (landingController.currentScreen.value == 5) {
                return const PaymentScreen();
              } else {
                return const OtherServicesManagementScreen();
              }
            }),
          )
        ],
      ),
    );
  }

  Container buildLeftLayout(LandingController landingController) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      width: 150.w,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 1;
            },
            child: Text(
              'Program Planning',
              style: AppStyles().normalTextStyle,
            ),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 2;
            },
            child:  Text('Access Insight',style: AppStyles().normalTextStyle,),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 3;
            },
            child:  Text('Audio Content',style: AppStyles().normalTextStyle,),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 4;
            },
            child:  Text('News',style: AppStyles().normalTextStyle,),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 5;
            },
            child:  Text('Payment',style: AppStyles().normalTextStyle,),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 6;
            },
            child:  Text('Other Services Managment',style: AppStyles().normalTextStyle,),
          ),
        ],
      ),
    );
  }
}
