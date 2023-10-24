import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_styles.dart';

class ProgramPlanningScreen extends StatelessWidget {
  const ProgramPlanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Splash Screen Image Change',
              style: AppStyles().extraLargeTextStyle,
            ),
            SizedBox(height: 10.h),
            Container(height: 1, width: double.infinity, color: Colors.white24),
            SizedBox(
              height: 40.h,
            ),
            buildChangeImageLayout(),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Program Plan Update',
              style: AppStyles().extraLargeTextStyle,
            ),
            SizedBox(height: 10.h),
            Container(height: 1, width: double.infinity, color: Colors.white24),
            SizedBox(
              height: 40.h,
            ),
            buildProgramPlanListLayout(),
          ],
        ),
      ),
    );
  }

 buildProgramPlanListLayout() {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 350),
        itemCount: 20,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 300.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Program ${index + 1}',
                  style: AppStyles().largeTextStyle,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white24),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/image_thumbnail.png'),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Upload Background Image',
                            style: AppStyles().normalTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                  // height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          'Program Title',
                          style: AppStyles().extraSmallTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white24),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Day',
                                style: AppStyles().extraSmallTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.white24)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/bd.png',
                                    height: 20.h,
                                    width: 10.w,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    'Time',
                                    style: AppStyles().extraSmallTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white24),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/am.png',
                                    height: 20.h,
                                    width: 10.w,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    'Time',
                                    style: AppStyles().extraSmallTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'Update Changes',
                    style: AppStyles().smallTextStyle,
                  )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Column buildChangeImageLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Change Image',
          style: AppStyles().largeTextStyle,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 250.h,
          width: 120.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white24),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/image_thumbnail.png'),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Upload Background Image',
                  style: AppStyles().normalTextStyle,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 50.h,
          width: 120.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Colors.red),
          child: Center(
              child: Text(
            'Update Changes',
            style: AppStyles().smallTextStyle,
          )),
        ),
      ],
    );
  }
}
