import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
   LandingScreen({super.key});
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    LandingController landingController = Get.put(LandingController());
    return Scaffold(
      backgroundColor: Colors.black,

      body: ResponsiveLayout(
          desktopview: Row(
            children: [
              buildLeftLayout(landingController),
              buildRightLayout(landingController),
            ],
          ),
          mobileview: Container()),
    );
  }

  Expanded buildRightLayout(LandingController landingController) {
    return Expanded(
      child: Column(
        children: [
          buildAppbarLayout(),
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

  Container buildAppbarLayout() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Container(
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  hintText:
                      'Explore any topic you desire, find what you require',
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          InkWell(
            onTap: () {
            },
            child: SizedBox(
                height: 90.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('images/relaks_refresh.png'),
                )),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    );
  }

  buildLeftLayout(LandingController landingController) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      width: 150.w,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 96, 96, 96),
            Color.fromARGB(255, 23, 23, 23)
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'images/icon.jpeg',
                height: 50.w,
                width: 50.w,
              ),
            ),
            Text(
              'Main Dashboard',
              style: AppStyles().smallTextStyle.copyWith(color: Colors.grey),
            ),
            Text(
              'Relaks Media',
              style: AppStyles().largeTextStyle,
            ),
            SizedBox(
              height: 50.h,
            ),
            buildMenuItemLayout(landingController),
          ],
        ),
      ),
    );
  }

   buildMenuItemLayout(LandingController landingController) {
    return Obx(() => 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
               landingController.currentScreen.value = 1;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 1 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/plan.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Program Planning',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              
              
              landingController.currentScreen.value = 2;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 2 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/Subtract.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Access Insight',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 3;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 3 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/audio.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Audio Content',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              landingController.currentScreen.value = 4;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 4 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/Component 32.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'News',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
            
              landingController.currentScreen.value = 5;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 5 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/payment.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Payment',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
               landingController.currentScreen.value = 6;
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              color: landingController.currentScreen.value == 6 ? Colors.white24 : null,
              child: Row(
                children: [
                  Image.asset(
                    'images/services.png',
                    height: 10.w,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      'Other Services Managment',
                      style: AppStyles().normalTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
