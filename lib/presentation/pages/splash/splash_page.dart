import 'package:daily_note/common/strings_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../common/constants.dart';
import '../../routes/app_router.dart';
import '../../theme/colors.dart';
import '../../theme/typography.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        Future.delayed(splashDuration, () {
          context.router.replaceAll(const [NotesRoute()]);
        });
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            StringsConstants.appName,
            style: AppTypography.headline1.copyWith(color: AppColors.white),
          ).animate().fadeIn(duration: animationDuration),
        ),
      ),
    );
  }
}
