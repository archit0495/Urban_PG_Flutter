import 'package:anitha_s_application5/core/app_export.dart';
import 'package:anitha_s_application5/presentation/help_screen/help_screen.dart';
import 'package:anitha_s_application5/presentation/male_pg_page/male_pg_page.dart';
import 'package:anitha_s_application5/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FemalePgContainerScreen extends StatelessWidget {
  FemalePgContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.malePgPage,
                onGenerateRoute: (routeSetting) =>
                    PageRouteBuilder(
                        pageBuilder: (ctx, ani, ani1) =>
                            getCurrentPage(routeSetting.name!),
                        transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onTap: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Help:
        return AppRoutes.helpScreen;
      case BottomBarEnum.Notifications:
        return AppRoutes.malePgPage;
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.malePgPage:
        return MalePgPage();
      default:
        return DefaultWidget();
    }
  }
}


