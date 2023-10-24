import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:relaks_media_admin/screens/news/Controllers/news_controller.dart';
import 'dart:html' as html;

import '../../../utils/app_styles.dart';

class NewsScreen extends StatelessWidget {
   NewsScreen({super.key});
String description="Yellow weather warnings for thunderstorms and rain are in place across England and Wales - and southern parts of Scotland - and only expire at midnight tonight.\n\nA further alert covering the west of Northern Ireland is  in force until 9pm this evening.";
  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    double sch=MediaQuery.of(context).size.height;
    double scw=MediaQuery.of(context).size.width;
        return Padding(
          padding:  EdgeInsets.all(18.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("News Requests", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.white),),
               SizedBox(height: 20,),
               Container(
                 width:scw-40.w,
                 height: 1,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     colors: [Colors.white.withOpacity(0.5), Colors.black],
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0.0,8,8,0),
                 child: SizedBox(
                   child: GridView.builder(
                     shrinkWrap: true,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisExtent: 385,
                       crossAxisCount: 3,
                       mainAxisSpacing: 10.sp,
                       crossAxisSpacing: 10.sp,
                     ),
                     itemCount: 6,
                     itemBuilder: (context, index) {
                       return SizedBox(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               height: 142.0,
                               width: MediaQuery.of(context).size.width,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),
                                 child: Image.network(
                                   "https://prod.static9.net.au/fs/fe0c13dd-4d02-407b-9f1e-46bf33c27284",
                                   height: 142.0,
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                             SizedBox(height: 8,),
                             Container(
                               height: 26.0,
                               width: MediaQuery.of(context).size.width,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white.withOpacity(0.3)),
                               ),
                               child:  Padding(
                                 padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                 child: Text(
                                   "More than half a month's worth of rain could fall in parts",
                                   style: TextStyle(
                                     fontSize: 10.0,
                                     fontWeight: FontWeight.w300,
                                     color: Colors.white, // Set text color to white
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 8,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   height: 26.0,
                                   width: 140.w,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     border: Border.all(color: Colors.white.withOpacity(0.3)),
                                   ),
                                   child:  Padding(
                                     padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                     child: Text(
                                       "Shawon Khan",
                                       style: TextStyle(
                                         fontSize: 10.0,
                                         fontWeight: FontWeight.w300,
                                         color: Colors.white, // Set text color to white
                                       ),
                                     ),
                                   ),
                                 ),
                                 Container(
                                   height: 26.0,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     border: Border.all(color: Colors.white.withOpacity(0.3)),
                                   ),
                                   child:  Padding(
                                     padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                     child: Text(
                                       "3:44 PM",
                                       style: TextStyle(
                                         fontSize: 10.0,
                                         fontWeight: FontWeight.w300,
                                         color: Colors.white, // Set text color to white
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(height: 8,),
                             Container(
                               height: 116.0,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white.withOpacity(0.3)),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                 child: Text(
                                   description,
                                   style: TextStyle(
                                     fontSize: 10.0,
                                     fontWeight: FontWeight.w300,
                                     color: Colors.white, // Set text color to white
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 8,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 ElevatedButton(
                                   onPressed: () {
                                     // Add your onPressed callback here
                                   },
                                   style: ElevatedButton.styleFrom(
                                     primary: Color(0xFF32B84F), // Background color #32B84F
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5.0), // Border radius 5px
                                     ),
                                   ),
                                   child: Container(
                                     width: 60.w,
                                     alignment: Alignment.center,
                                     child: Text(
                                       "Approve",
                                       style: TextStyle(
                                         color: Colors.white, // Text color #FFF
                                         fontFamily: "Poppins",
                                         fontSize: 12.0, // Font size
                                         fontStyle: FontStyle.normal,
                                         fontWeight: FontWeight.w500, // Font weight 500
                                         // lineHeight can be handled via `height` property
                                         height: 1.61023, // 19.323px
                                       ),
                                     ),
                                   ),
                                 ),
                                 ElevatedButton(
                                   onPressed: () {
                                     // Add your onPressed callback here
                                   },
                                   style: ElevatedButton.styleFrom(
                                     primary: Color(0xFFEA1C24), // Background color #32B84F
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5.0), // Border radius 5px
                                     ),
                                   ),
                                   child: Container(
                                     width: 60.w,
                                     alignment: Alignment.center,
                                     child: Text(
                                       "Cancel",
                                       style: TextStyle(
                                         color: Colors.white, // Text color #FFF
                                         fontFamily: "Poppins",
                                         fontSize: 12.0, // Font size
                                         fontStyle: FontStyle.normal,
                                         fontWeight: FontWeight.w500, // Font weight 500
                                         // lineHeight can be handled via `height` property
                                         height: 1.61023, // 19.323px
                                       ),
                                     ),
                                   ),
                                 )

                               ],
                             )
                           ],
                         ),
                       );
                     },
                   ),
                 ),
               ),

               SizedBox(height: 30,),
               Text("Publish News", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.white),),
               SizedBox(height: 20,),
               Container(
                 width:scw-40.w,
                 height: 1,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     colors: [Colors.white.withOpacity(0.5), Colors.black],
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0.0,8,8,0),
                 child: SizedBox(
                   child: GridView.builder(
                     shrinkWrap: true,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisExtent: 410,
                       crossAxisCount: 3,
                       mainAxisSpacing: 10.sp,
                       crossAxisSpacing: 10.sp,
                     ),
                     itemCount: 6,
                     itemBuilder: (context, index) {
                       return SizedBox(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("News ${index+1}", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,color: Colors.white),),
                             InkWell(
                                 onTap: (){
                                   final uploadInput = html.FileUploadInputElement();
                                   uploadInput.accept = 'image/*';
                                   uploadInput.click();
                                   uploadInput.onChange.listen((e) => newsController.handleImageSelected(uploadInput));

                                 },
                                 child: Container(
                                   height: 142.0,
                                   width: MediaQuery.of(context).size.width,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     border: Border.all(color: Colors.white.withOpacity(0.3))
                                   ),
                                   child: Center(child: Obx(() {
                                     {
                                       final file = newsController.newsImage.value;
                                       if (file != null) {
                                         final imageUrl = html.Url.createObjectUrl(file);
                                         return ClipRRect( borderRadius: BorderRadius.circular(10),
                                             child: Image.network(imageUrl,fit: BoxFit.cover,
                                                 height: 142.0,
                                                 width: MediaQuery.of(context).size.width,));
                                       } else {
                                         return  Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             Icon(Icons.image,color: Colors.white,),
                                             Text('Upload thumbnail',style: TextStyle(color: Colors.white),),
                                           ],
                                         );
                                       }
                                     }
                                   }
                                   )),
                                 )
                             ),
                             SizedBox(height: 8,),
                             Container(
                               height: 26.0,
                               width: MediaQuery.of(context).size.width,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white.withOpacity(0.3)),
                               ),
                               child:  Padding(
                                 padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                 child: Text(
                                   "News Title",
                                   style: TextStyle(
                                     fontSize: 10.0,
                                     fontWeight: FontWeight.w300,
                                     color: Colors.white, // Set text color to white
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 8,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   height: 26.0,
                                   width: 140.w,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     border: Border.all(color: Colors.white.withOpacity(0.3)),
                                   ),
                                   child:  Padding(
                                     padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                     child: Text(
                                       "Publisher Name",
                                       style: TextStyle(
                                         fontSize: 10.0,
                                         fontWeight: FontWeight.w300,
                                         color: Colors.white, // Set text color to white
                                       ),
                                     ),
                                   ),
                                 ),
                                 Container(
                                   height: 26.0,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     border: Border.all(color: Colors.white.withOpacity(0.3)),
                                   ),
                                   child:  Padding(
                                     padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                     child: Text(
                                       "Time",
                                       style: TextStyle(
                                         fontSize: 10.0,
                                         fontWeight: FontWeight.w300,
                                         color: Colors.white, // Set text color to white
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(height: 8,),
                             Container(
                               height: 116.0,
                               width: MediaQuery.of(context).size.width,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white.withOpacity(0.3)),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.all(5.0), // Add 5.0 padding
                                 child: Text(
                                   "News Story",
                                   style: TextStyle(
                                     fontSize: 10.0,
                                     fontWeight: FontWeight.w300,
                                     color: Colors.white, // Set text color to white
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 8,),
                             ElevatedButton(
                               onPressed: () {
                                 // Add your onPressed callback here
                               },
                               style: ElevatedButton.styleFrom(
                                 primary: Color(0xFFEA1C24), // Background color #32B84F
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5.0), // Border radius 5px
                                 ),
                               ),
                               child: Container(
                                 width: MediaQuery.of(context).size.width,
                                 alignment: Alignment.center,
                                 child: Text(
                                   "Publish News",
                                   style: TextStyle(
                                     color: Colors.white, // Text color #FFF
                                     fontFamily: "Poppins",
                                     fontSize: 12.0, // Font size
                                     fontStyle: FontStyle.normal,
                                     fontWeight: FontWeight.w500, // Font weight 500
                                     // lineHeight can be handled via `height` property
                                     height: 1.61023, // 19.323px
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                       );
                     },
                   ),
                 ),
               ),
             ],
            ),
          ),
        );
  }
}