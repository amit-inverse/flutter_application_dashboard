import 'package:flutter/material.dart';
import 'package:flutter_application_dashboard/helpers/responsiveness.dart';
import 'package:flutter_application_dashboard/widgets/top_nav.dart';

import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
