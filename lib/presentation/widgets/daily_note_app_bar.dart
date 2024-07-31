import 'package:auto_route/auto_route.dart';
import 'package:daily_note/common/extension/map_index.dart';
import 'package:daily_note/presentation/theme/colors.dart';
import 'package:daily_note/presentation/theme/spacing.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../theme/typography.dart';
import 'app_button.dart';

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
                  if (autoImplementLeading)
                    AppButton(
                      child: const Icon(FeatherIcons.chevronLeft),
                      onPressed: () => context.router.pop(),
                    ),
                  (title != null)
                      ? Expanded(
                    child: Text(
                      title!,
                      style: AppTypography.headline1.copyWith(color: AppColors.white),
                    ),
                  )
                      : const Spacer(),
                  if (actions != null) ...{
                    ...actions!.mapIndexed(
                          (action, i) => Padding(
                        padding:
                        (i == actions!.length - 1) ? EdgeInsets.zero : const EdgeInsets.only(right: AppSpacings.l),
                        child: action,
                      ),
                    ),
                  },
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
