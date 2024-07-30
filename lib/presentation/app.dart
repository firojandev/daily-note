import 'package:daily_note/common/strings_constants.dart';
import 'package:daily_note/presentation/routes/app_router.dart';
import 'package:daily_note/presentation/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../di/di.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
        title: StringsConstants.appName,
        debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
    );
  }
}
