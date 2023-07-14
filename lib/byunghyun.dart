import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'main.dart';

class byunghyun extends StatefulWidget {
  @override
  State<byunghyun> createState() => _byunghyun();
}

class _byunghyun extends State<byunghyun> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('자기소개 하기', style: TextStyle(fontSize: 28)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  color: Colors.white, child: Image.asset('assets/hello.png')),
              Divider(),
              Container(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen1()));
                },
                child: Text('자신의 설명 및 MBTI'),
              )),
              Container(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen2()));
                },
                child: Text('객관적으로 살펴본 자신의 장점'),
              )),
              Container(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen3()));
                },
                child: Text('자신의 스타일 협업 스타일'),
              )),
              Container(
                  child: OutlinedButton(
                onPressed: () {
                  launchUrlString(
                    'https://blog.naver.com/92cbh',
                  );
                },
                child: Text('블로그'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('자신의 설명 및 MBTI'),
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '짧고',
                  ),
                  Text('굵게',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Container(
                    height: 100,
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Column(
                      children: [
                        Text('', textAlign: TextAlign.center),
                        Text('건축업에서 학과 조교까지'),
                        Text('지게차에서 MOSmaster까지'),
                        Text('용접봉에서 프린트 토너까지'),
                        Text('다음은 개발자 입니다')
                      ],
                    ),
                  ),
                  const Divider(
                    height: 8,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'MBTI',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Image.asset(
                    'assets/af.jpg',
                  ),
                  Text(''),
                  Text('난 MBTI를 경험한 적이 없네')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('객관적으로 살펴본 자신의 장점'),
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '도전하기 재밌어',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '',
                    style: TextStyle(fontSize: 40),
                  ),
                  Image.asset(
                    'assets/url.PNG',
                  ),
                  Image.asset(
                    'assets/img.PNG',
                  ),
                  Text(
                    '',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    '다음엔 또 어떤 문법을 찾아내 만들어볼까',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('자신의 스타일 협업 스타일'),
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('스타일',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(
                    '그래서 그거 작동 되나?',
                  ),
                  Text(
                    '디자인보다 기능 구현에 초점을 둔 유형',
                  ),
                  Text('',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const Divider(
                    height: 8,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '협업 스타일',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Text(''),
                  Text('1. 디자인을 못한다'),
                  Text('2. 얘기 듣는걸 훨씬 선호한다'),
                  Text('3. 도전과 기능구현에 초점을 둔다'),
                  Text('4. ????'),
                  Text('5. PROFIT!'),
                  Text(''),
                  Text('설계나 기능구현을 주로 담당합니다'),
                  Text('디자인 빼고'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
