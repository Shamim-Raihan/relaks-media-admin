import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccessInsightScreen extends StatelessWidget {
  const AccessInsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.yellow,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recently Got Access',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade500,
                        Colors.grey.shade700,
                      ],
                      stops: const [0.3, 1.0],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height - 400.h,
                    // width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 80,
                          mainAxisSpacing: 0.sp,
                          crossAxisSpacing: 0.sp,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/image/radio.png',
                                  height: 90.h,
                                  width: 30.w,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8.h,),
                                    Text(
                                      'Relaks Media Give Access',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                          fontFamily: 'Poppins',
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      '3 Hours Ago', overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                          fontFamily: 'Poppins',
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ]);
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
