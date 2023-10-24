import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return Center(
          child: Text('News Screen',style: AppStyles().normalTextStyle,),
        );
  }
}