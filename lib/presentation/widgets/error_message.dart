import 'package:daily_note/presentation/theme/colors.dart';
import 'package:daily_note/presentation/theme/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: AppTypography.title.copyWith(color: AppColors.description),
        textAlign: TextAlign.center,
      ),
    ).animate().fadeIn().scale();
  }
}
