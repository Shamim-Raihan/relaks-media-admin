import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Make sure to import this

class AudioContentScreen extends StatelessWidget {
  const AudioContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Audio Content Update',
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Section 2',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffEA1C24)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Update Changes',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 400.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: 3, // Displaying 3 containers
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                        height: 300.h,
                          width: 300.w,
                          child: Column(
                            children: [
                              Container(
                                height: 100.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Image.asset('assets/image/thumbnail.png',height: 50.h,width: 20.w,),
                              )
                            ],
                          )
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SizedBox(
//   child: ListView.builder(
//     itemCount: 2,
//       itemBuilder: (context, index)
//       {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment:MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Section 2',
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   fontSize: 10.sp,
//                   fontFamily: 'Poppins',
//                   color: Colors.white),
//             ),
//             ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(
//                     Color(0xffEA1C24)
//                   ),
//                 ),
//                 onPressed: () {},
//
//                 child: Text(
//                   'Update Changes',
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                       fontSize: 10.sp,
//                       fontFamily: 'Poppins',
//                       color: Colors.white),
//                 ))
//           ],
//         )
//       ],
//     );
//   }),
// )
