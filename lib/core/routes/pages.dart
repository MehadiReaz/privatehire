import 'package:get/get.dart';
import 'package:privatehire/core/routes/routes.dart';
import 'package:privatehire/features/auth/forgot_password/bindings/forgot_password_bindings.dart';
import 'package:privatehire/features/auth/forgot_password/presentation/forgot_password_view.dart';
import 'package:privatehire/features/auth/login/bindings/login_bindings.dart';
import 'package:privatehire/features/auth/login/presentation/login_view.dart';
import 'package:privatehire/features/auth/registration/bindings/register_bindings.dart';
import 'package:privatehire/features/auth/registration/presentation/register_view.dart';
import 'package:privatehire/features/auth/reset_password/bindings/reset_password_bindings.dart';
import 'package:privatehire/features/auth/reset_password/presentation/reset_password_view.dart';
import 'package:privatehire/features/auth/verify_email/bindings/verify_email_bindings.dart';
import 'package:privatehire/features/auth/verify_email/presentation/verify_email_view.dart';
import 'package:privatehire/features/chapter_details/presentation/chapter_details_view.dart';
import 'package:privatehire/features/qs_type/bindings/qs_type_bindings.dart';
import 'package:privatehire/features/seru/bindings/seru_bindings.dart';
import 'package:privatehire/features/theory/bindings/theory_bindings.dart';
import 'package:privatehire/features/theory/presentation/theory_view.dart';

import '../../features/bottom_nav/presentation/bottom_nav_view.dart';
import '../../features/chapter_details/bindings/chapter_details_bindings.dart';
import '../../features/home/bindings/home_bindings.dart';
import '../../features/home/presentation/home_view.dart';
import '../../features/qs_type/presentation/qs_type_view.dart';
import '../../features/seru/presentation/seru_view.dart';
import '../../features/splash_screen/bindings/splash_bindings.dart';
import '../../features/splash_screen/presentation/splash_screen.dart';

class Pages {
  static const splashScreen = SplashScreen();
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.bottomNav,
      page: () => const CustomBottomNavBar(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.seru,
      page: () => const SeruView(),
      binding: SeruBindings(),
    ),
    GetPage(
      name: Routes.chapterDetailsScreen,
      page: () => const ChapterDetailsView(),
      binding: ChapterDetailsBindings(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterView(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.resetPassword,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBindings(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBindings(),
    ),
    GetPage(
      name: Routes.verifyEmail,
      page: () => const EmailVerificationView(),
      binding: VerifyEmailBindings(),
    ),
    GetPage(
      name: Routes.questionTypes,
      page: () => const QsTypeView(),
      binding: QsTypeBindings(),
    ),
    GetPage(
      name: Routes.theoryTypes,
      page: () => const TheoryView(),
      binding: TheoryBindings(),
    ),
  ];
}
