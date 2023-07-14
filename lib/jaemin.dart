import 'package:flutter/material.dart';

class jaemin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('임재민'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/test.jpg',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  '이름 : 임재민\n'
                  'MBTI : ENTP\n'
                  '관심사 : 드라마\n'
                  '좋아하는것 : 술\n'
                  '사는지역 : 충청남도 천안\n'
                  '목표 : 취업\n',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Divider(),
                Text(
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                  '자신의 강점 : 한번 맡은일은 끝까지한다\n',
                ),
                SizedBox(height: 20),
                Text(
                  '협업 스타일 : 도와주기보단 도전하는 모습을 좋아한다\n',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  '인간적인면모 : T지만 공감가능\n',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                )
              ],
            )
          ],
        ));
  }
}
