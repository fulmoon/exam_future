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
                onPressed: () async {
                  print('Hello~');
                  String result = await exam1_3();
                  print(result);
                },
                child: const Text('연습 1'),
              ),
              const SizedBox(
                width: 200,
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  print('Hello~');
                  for (int i = 0; i < 3; i++) {
                    await Future.delayed(const Duration(seconds: 1))
                        .then((value) {
                      print('World!');
                    });
                  }
                },
                child: const Text('연습 2'),
              ),
              const SizedBox(
                width: 200,
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  exam3();
                },
                child: const Text('연습 3'),
              ),
            ],
          ),
        ));
  }

  Future exam3() async {
    print('다운로드 시작!');

    await Future.delayed(const Duration(seconds: 1)).then((value) {
      print('초기화 중...');
    });

    await Future.delayed(const Duration(seconds: 1)).then((value) {
      print('핵심 파일 로드 중...');
    });

    await Future.delayed(const Duration(seconds: 3)).then((value) {
      print('다운로드 완료!');
    });
  }

  Future exam2_1() async {
    await Future.delayed(const Duration(seconds: 1));

    print('World!');
  }

  Future<String> exam1_2() async {
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
