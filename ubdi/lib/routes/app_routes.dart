import 'package:flutter/material.dart';
import 'package:anitha_s_application5/presentation/loading_screen/loading_screen.dart';
import 'package:anitha_s_application5/presentation/sign_up_verification_screen/sign_up_verification_screen.dart';
import 'package:anitha_s_application5/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:anitha_s_application5/presentation/search_details_screen/search_details_screen.dart';
import 'package:anitha_s_application5/presentation/home_screen/home_screen.dart';
import 'package:anitha_s_application5/presentation/description_screen/description_screen.dart';
import 'package:anitha_s_application5/presentation/location_tab_container_screen/location_tab_container_screen.dart';
import 'package:anitha_s_application5/presentation/female_pg_container_screen/female_pg_container_screen.dart';
import 'package:anitha_s_application5/presentation/colivingpg_screen/colivingpg_screen.dart';
import 'package:anitha_s_application5/presentation/registered_successfully_screen/registered_successfully_screen.dart';
import 'package:anitha_s_application5/presentation/register_screen/register_screen.dart';
import 'package:anitha_s_application5/presentation/about_us_screen/about_us_screen.dart';
import 'package:anitha_s_application5/presentation/help_screen/help_screen.dart';
import 'package:anitha_s_application5/presentation/notification_screen/notification_screen.dart';
import 'package:anitha_s_application5/presentation/account_screen/account_screen.dart';
import 'package:anitha_s_application5/presentation/edit_account_screen/edit_account_screen.dart';
import 'package:anitha_s_application5/presentation/book_screen/book_screen.dart';
import 'package:anitha_s_application5/presentation/add_new_card_screen/add_new_card_screen.dart';
//import 'package:anitha_s_application5/presentation/code_screen/code_screen.dart';
import 'package:anitha_s_application5/presentation/recently_viewed_screen/recently_viewed_screen.dart';
import 'package:anitha_s_application5/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:anitha_s_application5/presentation/verification_screen/verification_screen.dart';
import 'package:anitha_s_application5/presentation/new_password_screen/new_password_screen.dart';
import 'package:anitha_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';

  static const String signUpVerificationScreen = '/sign_up_verification_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String searchDetailsScreen = '/search_details_screen';

  static const String homeScreen = '/home_screen';

  static const String descriptionScreen = '/description_screen';

  static const String locationPage = '/location_page';

  static const String locationTabContainerScreen =
      '/location_tab_container_screen';

  static const String malePgPage = '/male_pg_page';

  static const String femalePgPage = '/female_pg_page';

  static const String femalePgContainerScreen = '/female_pg_container_screen';

  static const String colivingpgScreen = '/colivingpg_screen';

  static const String registeredSuccessfullyScreen =
      '/registered_successfully_screen';

  static const String registerScreen = '/register_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String helpScreen = '/help_screen';

  static const String notificationScreen = '/notification_screen';

  static const String accountScreen = '/account_screen';

  static const String editAccountScreen = '/edit_account_screen';

  static const String bookScreen = '/book_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String codeScreen = '/code_screen';

  static const String recentlyViewedScreen = '/recently_viewed_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loadingScreen: (context) => LoadingScreen(),
    signUpVerificationScreen: (context) => SignUpVerificationScreen(),
    signUpScreen: (context) => SignUpScreen(),
    searchDetailsScreen: (context) => SearchDetailsScreen(),
    homeScreen: (context) => HomeScreen(),
    descriptionScreen: (context) => DescriptionScreen(),
    locationTabContainerScreen: (context) => LocationTabContainerScreen(),
    femalePgContainerScreen: (context) => FemalePgContainerScreen(),
    colivingpgScreen: (context) => ColivingpgScreen(),
    registeredSuccessfullyScreen: (context) => RegisteredSuccessfullyScreen(),
    registerScreen: (context) => RegisterScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    helpScreen: (context) => HelpScreen(),
    notificationScreen: (context) => NotificationScreen(),
    accountScreen: (context) => AccountScreen(),
    editAccountScreen: (context) => EditAccountScreen(),
    bookScreen: (context) => BookScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    //codeScreen: (context) => CodeScreen(),
    recentlyViewedScreen: (context) => RecentlyViewedScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    verificationScreen: (context) => VerificationScreen(),
    newPasswordScreen: (context) => NewPasswordScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
