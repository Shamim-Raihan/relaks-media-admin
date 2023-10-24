import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class AudioContentScreen extends StatelessWidget {
  const AudioContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return Center(
          child: Text('Audio Content Screen',style: AppStyles().normalTextStyle,),
        );
  }
}