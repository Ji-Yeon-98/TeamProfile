import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:test1/informItem.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    //이미지 넣는 리스트
    var addressSentances = informItem.Sentences;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Text(
                        addressSentances[3]['title'] ??
                            'def', //child, - class 간에 값을 전달 받기 위했었으나
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          launchUrlString(
                            addressSentances[3]['sentence'] ?? 'def',
                          );
                        },
                        child: Text(addressSentances[3]['sentence'] ?? 'def'),
                      )
                      /*
                      TextButton(
                          onPressed: () {
                            blogUrl();
                          },
                          child: Text(
                            addressSentances[3]['sentence'] ?? 'def',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                          */
                      //Spacer(),
                      //Text(

                      //  addressSentances[3]['sentence'] ??
                      //      'def', //child, - class 간에 값을 전달 받기 위했었으나
                      //style: TextStyle(fontSize: 20, color: Colors.black),
                      //),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Text(
                      addressSentances[4]['title'] ??
                          'def', //child, - class 간에 값을 전달 받기 위했었으나
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        launchUrlString(
                          addressSentances[4]['sentence'] ?? 'def',
                        );
                      },
                      child: Text(addressSentances[4]['sentence'] ?? 'def'),
                    )
                    //Spacer(),
                    /*
                    TextButton(
                        onPressed: () {
                          githubUrl();
                        },
                        child: Text(
                          addressSentances[4]['sentence'] ?? 'def',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                        */
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
/*
blogUrl() async {
  String url = "https://velog.io/@lus322";
  if (await canLaunch(url)) {
    await launch(url);
  }
  else {
    Get.snackbar('연결 실패',
        duration: Duration(seconds: 10), backgroundColor: Colors.white);
  }
}


githubUrl() async {
  String url = "https://github.com/VonLyus";
  if (await canLaunch(url)) {
    await launch(url);
  }
  else {
    Get.snackbar('연결 실패', 
        duration: Duration(seconds: 10), backgroundColor: Colors.white);
  }
}

*/