import 'package:daily_note/presentation/routes/app_router.dart';
import 'package:daily_note/presentation/theme/colors.dart';
import 'package:daily_note/presentation/theme/typography.dart';
import 'package:flutter/material.dart';

extension BuildContextEx on BuildContext {
  void showToast(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(
        message,
        style: AppTypography.description.copyWith(color: AppColors.white),
      ),
      backgroundColor: isError ? AppColors.error : AppColors.success,
      duration: const Duration(seconds: 2),
    ));
  }
}

extension AppRouterEx on AppRouter {
  BuildContext get context => navigatorKey.currentContext!;
}
