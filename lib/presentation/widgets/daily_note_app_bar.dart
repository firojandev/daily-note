import 'package:daily_note/presentation/theme/colors.dart';
import 'package:daily_note/presentation/theme/spacing.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DailyNoteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DailyNoteAppBar({
    super.key,
    this.autoImplementLeading = true,
    this.title,
    this.actions,
    this.systemUiOverlayStyle = SystemUiOverlayStyle.dark,
  });

  final bool autoImplementLeading;
  final String? title;
  final List<Widget>? actions;
  final SystemUiOverlayStyle systemUiOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        child: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color:AppColors.white),
            brightness: Brightness.light,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSpacings.xl),
            padding: const EdgeInsets.symmetric(vertical: AppSpacings.xl),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                ],
              ),
            ),
          ),
        ),
        value: systemUiOverlayStyle);
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
