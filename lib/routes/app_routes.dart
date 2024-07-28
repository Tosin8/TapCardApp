import 'package:get/get.dart';
import 'package:tapcard/routes/routes.dart';
import 'package:tapcard/views/auth/signup.dart';
import 'package:tapcard/views/homeScreen.dart';
import 'package:tapcard/views/settings/settings_view.dart';
import 'package:tapcard/views/splash_screen.dart';

import '../views/auth/signin.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: TRoutes.home, page: () => const HomeScreen()),
    GetPage(name: TRoutes.settings, page: () => SettingsScreen()),
    GetPage(name: TRoutes.signin, page: () => const SignInScreen()),
    GetPage(name: TRoutes.signup, page: () => const SignUpScreen()),
  ]; 
}