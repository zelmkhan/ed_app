import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_confetti/flutter_confetti.dart';
import 'package:telegram_web_app/telegram_web_app.dart';
import 'package:ed_app/cubit/main_cubit.dart';
import 'package:ed_app/main.dart';
import 'package:ed_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  HapticFeedback get hapticFeedback => TelegramWebApp.instance.hapticFeedback;

  @override
  void initState() {
    Confetti.launch(
      context,
      options: const ConfettiOptions(
          particleCount: 100, spread: 70, y: 0.6)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MainCubit mainCubit = context.read<MainCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/ed_logo.png',
                            height: 24.0, width: 24.0),
                        const SizedBox(width: 16.0),
                        Text(appLang.appNameText,
                            style: const TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 1.0,
                                fontFamily: 'Roobert-Bold')),
                      ],
                    ),
                    Row(
                      children: [
                        CustomInkWell(
                          onTap: () {},
                          child: Container(
                              height: 40.0,
                              width: 60.0,
                              padding: const EdgeInsets.all(4.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.1)),
                              child: const Icon(Icons.share, color: Color(0xFFCECECE),)),
                        ),
                        CustomInkWell(
                          onTap: () {},
                          child: Container(
                              height: 40.0,
                              width: 60.0,
                              padding: const EdgeInsets.all(4.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.1)),
                              child: Image.asset('assets/icons/wallet.png', height: 21.0, width: 21.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Center(child: Text("1", style: TextStyle(fontSize: 64.0, fontFamily: 'Roobert-Bold'))),
          const SizedBox(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Container(
              height: 80.0,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(28.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/calendar.png', height: 24.0, width: 24.0),
                  const SizedBox(width: 16.0),
                  SizedBox(width: MediaQuery.of(context).size.width / 1.3, child: const Text('Check in every day to increase your visit days, every 90 days you will get airdrop in \$ED tokens '))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
