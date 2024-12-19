import 'package:am_project/app_routes.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/app_routes_path.dart';
import 'package:am_project/core/constant/themes/global_theme.dart';
import 'package:am_project/features/main_scr/bloc/main_screen_bloc.dart';
import 'package:am_project/generated/l10n.dart';
import 'package:am_project/injection.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'injection.dart' as di;
import 'core/constant/design/constant.dart';

void main() async {
  WidgetsFlutterBinding();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MainScreenBloc _mainScreenBloc;
  @override
  void initState() {
    super.initState();
    _mainScreenBloc = serviceLocator<MainScreenBloc>()
      ..add(BottomNavBarEvent(currentIndex: 0));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kDesignSize,
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _mainScreenBloc,
          ),
        ],
        child: MaterialApp(
          title: 'am',
          locale: const Locale("en"),
          builder: BotToastInit(),
          //TODO: if locale english add english theme else arabicTheme
          theme: GlobalTheme.englishTheme,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          initialRoute: AppRoutesPath.splashScreen,
          onGenerateRoute: AppRouter.onGenerateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
