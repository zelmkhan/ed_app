import 'package:ed_app/cubit/main_cubit.dart';
import 'package:ed_app/cubit/main_states.dart';
import 'package:ed_app/screens/loading_screen.dart';
import 'package:ed_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class ScreensController extends StatelessWidget {
  const ScreensController({super.key});

  HapticFeedback get hapticFeedback => TelegramWebApp.instance.hapticFeedback;
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainStates>(builder: (context, state) {

      if (state is LoadingScreenState) {
        return LoadingScreen(message: state.message ?? '');
      }
      
      if (state is MainScreenState) {
        return const MainScreen();
      }

      return const SizedBox();
    });
  }
}
