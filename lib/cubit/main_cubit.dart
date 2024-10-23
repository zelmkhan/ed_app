import 'dart:async';
import 'package:telegram_web_app/telegram_web_app.dart';
import 'package:ed_app/cubit/main_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ed_app/data/currencys.dart';
import 'package:ed_app/main.dart';
import 'package:ed_app/service/server_api.dart';


class MainCubit extends Cubit<MainStates> {
  MainCubit({initialState}) : super(LoadingScreenState()) {
    startApp();
  }

  Future<void> startApp() async {
    final initData = TelegramWebApp.instance.initData;

    if (initData.user.username == null) {
      return emit(ErrorScreenState());
    } 

    //final ref = Uri.base.queryParameters['tgWebAppStartParam'];

    // Check userData

    emit(MainScreenState());
  }


  Future<void> createTransh() async {
    emit(LoadingScreenState(message: appLang.waitingPaymentDetailsText));
    await Future.delayed(const Duration(seconds: 3));
    emit(PaymentDetailScreenState());
  }

}
