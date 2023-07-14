//flutter pub add provider 명령어
//flutter pub get 명령어

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/byunghyun.dart';
import 'package:test1/jiyeon.dart';
import 'package:test1/profile_service.dart';
import 'package:test1/youngjin.dart';
import 'jaemin.dart';
import 'youngjin.dart';
import 'yusung.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const ids = [
      {'image': 'assets/test.jpg', 'name': '임재민', 'role': '팀장'},
      {'image': 'assets/yusung_picture.jpg', 'name': '나유성', 'role': '팀원'},
      {'image': 'assets/youngjin_picture.jpg', 'name': '도영진', 'role': '팀원'},
      {'image': 'assets/bh_picture.jpg', 'name': '조병현', 'role': '팀원'},
      {'image': 'assets/cat.jpg', 'name': '추지연', 'role': '팀원'},
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //앱 우측상단부의 보여지는 디버그 배너 가리기
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Nougat",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 18,
                      child: Text(
                        "TEAM",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(39, 112, 171, 254),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "특징 : 열린 소통과 다양성을 가지고 팀원들의 성장과 의견을 존중",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "목표 : 협업을 통해 문제를 해결하고 아이디어를 공유해서 성과 도출",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: double.infinity,
                  height: 18,
                  child: Text(
                    "TEAM MEMBER",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 5,
                  ),
                  itemCount: ids.length,
                  itemBuilder: (context, index) {
                    var id = ids[index];
                    String imageUrl = id['image']!;
                    String name = id['name']!;
                    String role = id['role']!;

                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => jaemin()),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    YuseongIntro(underSetting: 0)),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => youngjin()),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => byunghyun()),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JiYeon()),
                          );
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.width *
                                    0.5 *
                                    5 /
                                    3 *
                                    0.55,
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      role,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
