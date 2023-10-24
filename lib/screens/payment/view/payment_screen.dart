import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return  Center(
          child: Text('Payment Screen',style: AppStyles().normalTextStyle,),
        );
  }
}