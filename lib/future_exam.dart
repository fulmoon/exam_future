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
            print('Hello~');
            exam1_2().then((value) => print(value));

          },
          child: const Text('연습 1'),
        ),
      )
    );
  }

  Future exam1_1() async{
    await Future.delayed(const Duration(seconds: 3));

    print('World!');
  }

  Future<String> exam1_2() async{
    await Future.delayed(const Duration(seconds: 3));

    var data = await Future.value('world');

    return data;
  }
}
