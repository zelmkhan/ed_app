import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  final String message;
  const LoadingScreen({super.key, required this.message});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(color: Colors.white, backgroundColor: Colors.grey.withOpacity(0.1)),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Text(widget.message, textAlign: TextAlign.center, style: const TextStyle(fontSize: 21.0, color: Colors.grey, )))
              ],
            )),
      ),
    );
  }
}
