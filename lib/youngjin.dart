import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class youngjin extends StatefulWidget {
  const youngjin({Key? key}) : super(key: key);

  @override
  State<youngjin> createState() => _youngjinState();
}

class _youngjinState extends State<youngjin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //맨 위의 app 바 제목 정하는 코드
      appBar: AppBar(
        //text 원하는 걸로 바꾸면 됩니다. style : (TextStyle: ) 옵션 찾아보시고 꾸미셔도 돼요.
        title: Text('도영진 profile'),
      ),
      body: Padding(
        //여백 주는 코드 : all은 모든 뱡향으로 16정도 바깥 여백을 주겠다.
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //보통 여백을 주고 싶을 때 쓰는 코드 (높이가 16인 빈 박스 만듦)
            SizedBox(height: 16),
            Container(
              // double.infinity : 화면 전체로 값을 넣어줌
              // 넓이를 화면 전체로 설정, 높이는 200
              width: double.infinity,
              height: 200,
              color: const Color.fromARGB(255, 251, 251, 251),
              child: Row(
                //row의 crossAxisAlignment.center : 세로 비율 가운데 (설명하기 어려우니까 찾아보세요!!)
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 이미지를 동그랗게 만들어주기 위해 container 만들어줌
                  Container(
                    width: 130,
                    height: 130,
                    //alignment : 정렬
                    alignment: Alignment.center,
                    //기본값은 네모이므로 BoxDecoration 옵션을 통해 동그랗게 만들어줌
                    decoration: BoxDecoration(
                      //모양을 동그라미로 설정
                      shape: BoxShape.circle,
                      //이미지 넣기
                      image: DecorationImage(
                        image: AssetImage('assets/youngjin_picture.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      //column의 crossAxisAlignment.start : 가로 비율 맨 왼쪽 (설명하기 어려우니까 찾아보세요!!)
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //공백을 주는 함수 : 이것도 찾아보셔야될 것 같아요
                        Spacer(),
                        // 이름 text
                        Text(
                          "이름 : 도영진",
                          style: TextStyle(
                            //글씨 사이즈
                            fontSize: 18,
                            //글씨 굵기
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "생년월일 : 1994.09.21",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "MBTI : ESFJ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //구분선
            Divider(),
            SizedBox(
              height: 8,
            ),
            //Expanded : 따로따로 동작하기 위해 사용 (위의 내용과 아래의 내용 따로 동작)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "  장점",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80,
                          padding: EdgeInsets.all(100),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 169, 212, 255)
                                .withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        Text(
                          "일관성 있는 태도, 책임감이 강함",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "  협업 스타일",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80,
                          padding: EdgeInsets.all(100),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 169, 212, 255)
                                .withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        Text(
                          "다른 사람들과 소통을 잘 함",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "  GITHUB",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80,
                          padding: EdgeInsets.all(100),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 169, 212, 255)
                                .withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        Text(
                          "https://github.com/keey1003/test-repository.git",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
