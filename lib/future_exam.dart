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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async{
                print('Hello~');
                String result = await exam1_3();
                print(result);

              },
              child: const Text('연습 1'),
            ),
            ElevatedButton(
              onPressed: () async{
                print('Hello~');

                await Future.delayed(const Duration(seconds: 1));
                print('World!');
                await Future.delayed(const Duration(seconds: 1));
                print('World!');
                await Future.delayed(const Duration(seconds: 1));
                print('World!');

              },
              child: const Text('연습 2'),
            ),
          ],
        ),
      )
    );
  }

  Future exam2_1() async{
    await Future.delayed(const Duration(seconds: 1));

    print('World!');
  }

  Future<String> exam1_2() async{
    await Future.delayed(const Duration(seconds: 3));

    var data = await Future.value('world');

    return data;
  }

  Future<String> exam1_3() async{
    await Future.delayed(const Duration(seconds: 3));
    return('world');

  }

  Future exam1_1() async{
    await Future.delayed(const Duration(seconds: 3));

    print('World!');
  }

}
