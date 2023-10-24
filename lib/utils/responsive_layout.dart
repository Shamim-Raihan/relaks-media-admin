import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopview;
  final Widget tabletview;
  final Widget mobileview;
  const ResponsiveLayout({super.key,required this.desktopview,required this.tabletview,required this.mobileview});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 600) {
        return desktopview;
      } else {
        return mobileview;
      }
    });
  }
}
