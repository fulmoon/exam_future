import 'package:flutter/material.dart';

class FutureExam extends StatelessWidget {
  const FutureExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future 연습'),
      ), //AppBar
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          },
          child: const Text('연습 1'),
        ),
      )
    );
  }
}
