import 'package:ed_app/cubit/main_cubit.dart';
import 'package:ed_app/lang/lang_controller.dart';
import 'package:ed_app/lang/model/lang.dart';
import 'package:ed_app/screens/screens_controller.dart';
import 'package:ed_app/theme/theme.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram_web_app/telegram_web_app.dart';
import 'package:url_strategy/url_strategy.dart';

late Lang appLang;

void main() async {
  setPathUrlStrategy();

  // try {
  //   if (TelegramWebApp.instance.isSupported) {
  //     await TelegramWebApp.instance.ready();
  //     Future.delayed(const Duration(milliseconds: 1000), () async => await TelegramWebApp.instance.expand());
  //   }
  // } catch (e) {
  //   debugPrint("Error happened in Flutter while loading Telegram $e");
  //   await Future.delayed(const Duration(milliseconds: 200));
  //   main();
  // }

  final TelegramWebApp telegramWebApp = TelegramWebApp.instance;
  telegramWebApp.setHeaderColor(const Color(0xFF252525));
  telegramWebApp.expand();
  appLang = LangController.getUserLang(telegramWebApp.initData.user.languageCode ?? 'en');
  telegramWebApp.disableVerticalSwipes();
  
  runApp(
    BlocProvider<MainCubit>(
      create: (context) => MainCubit(),
      child: ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          themeMode: ThemeMode.dark,
          home: const ScreensController(),
        ),
      ),
    ),
  );

}