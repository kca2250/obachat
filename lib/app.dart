import 'package:flutter/material.dart';
import 'package:kansai_no_obachat/components/keyboard.dart';
import 'package:kansai_no_obachat/components/chat_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const title = Text(
    'おばちゃっと',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 19.5,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo[50],
          appBar: AppBar(
            title: title,
            centerTitle: true,
            backgroundColor: Colors.deepOrange[400],
            actions: [
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              )
            ],
          ),
          body: GestureDetector(
            onTap: () => primaryFocus?.unfocus(),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChatView(),
                Keyboard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
