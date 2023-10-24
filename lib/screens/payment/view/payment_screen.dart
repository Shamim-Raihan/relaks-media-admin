import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:relaks_media_admin/screens/payment/Controller/payment_controller.dart';
import 'package:country_flags/country_flags.dart';


import '../../../utils/app_styles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String countryCode = 'US'; // ISO 3166-1 alpha-2 country code
    PaymentController paymentController = Get.put(PaymentController());
    double sch=MediaQuery.of(context).size.height;
    double scw=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.all(18.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment Requests", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.white),),
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
            SizedBox(height: 30,),
            Text("Recent Donors", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.white),),
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
                    mainAxisExtent: 60,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.sp,
                    crossAxisSpacing: 10.sp,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 100.h,width: 100.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                          child: Image.network("https://st2.depositphotos.com/1000686/9809/i/450/depositphotos_98096908-stock-photo-home-portrait-of-beautiful-young.jpg",fit: BoxFit.cover, height: 100.h,width: 100.h,),
                          
                        ),
                      ),
                      title:Text("Donated \$ 90", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp,color: Colors.white),) ,
                      subtitle: Text("William Rude From", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 6.sp,color: Colors.grey),),
                      trailing:  SizedBox(
                        height: 30,width: 60,
                        child: SizedBox(
                          height: 48,
                          width: 62,
                          child: CountryFlag.fromCountryCode(
                            'ES',
                            height: 48,
                            width: 62,
                            borderRadius: 8,
                          ),
                        ),
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