import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/square.dart';
import 'package:test1/informItem.dart';

import 'MyAddress.dart';
import 'MySelf.dart';
import 'defaultSet.dart';

class YuseongIntro extends StatefulWidget {
  final int underSetting;
  YuseongIntro({required this.underSetting});
  @override
  _YuseongIntroState createState() => _YuseongIntroState();
}

class _YuseongIntroState extends State<YuseongIntro> {
  //const YuseongIntro({Key? key}) : super(key: key);
  var sentances = informItem.Sentences;
  int underSetting = 0;
  int selectedIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    //배열 + Map 형식
    //정보 전달의 종류
    //배열로 정의
    const List infoTypes = [
      'MySelf',
      'BLOG  AND  GITHUB',
    ];
    //화면에 보이는 영역
    return Scaffold(
      resizeToAvoidBottomInset: false, // 키보드가 올라와도 배경 이미지가 밀려 올라가지 않도록

      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "My introduce",
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'FasthandRegular' //fontWeight: FontWeight.bold,
              ),
        ),
      ),

      body: Container(
          //배경 이미지
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://lh3.googleusercontent.com/fife/AKsag4PzbmFIVqo4GkvURfDCYAHiPzbYavn5--2kNTre57JRAP119UyK57o8tDzKOOlT264elUALc0r1SV8d3ZUV5iXEcU4smBIqzKmT5RNexJy3g3mFlsikaYxF-HrdHr3UEcYdEPJgaNPRjVqv_QbfEr-S9NNZKbdjG4mCj74nEmXhLgSBZHG_f5FfNY9V8NZy-NgBvLeLwGtVMDVbFukFaW-1gvs8X0g5rCNX-NA30cQhCOUPeI_Mfo2Anf8ijzdoGyvAmSxPvSGlSIDQXHKr453k-1ipDFVF6_Slti37e_46924X3u81KKXAgg5OPsxG2lxIGxyvmV3rzPaloWgWhnwhES3ye44BruPB7B1HW8Hr7CisZ21uaabti9luXXjR_NjGN2WgMsNVHlPm5VoQy06EHzhnzbnZP_QvzXyrc4jDUT1EjFXM6Cc-iUD5iDuqOZhyHfcar3m9Anx-HJyAQ6G1QfZFgRUq4bHactm6ZkeGgHgsBI46v2UW_wsa1lifoMGLj2AdvMnzOWkiqJns471I9j1XdeVlLlX3sBIiU1QqTVj3PIPh1iwbXUptkFIUrO0qmqV-ZNGbFbGpqmyBIUxixbtsQiyJPGK_kFUnHeEN9B-BSkkAj2g5YX7HbRrAFX5ARGTaXu36c3r2DEIWOxamF8XSX8VjuZoY69C2c-y-cZ52nIGOXod6JG4bCp0-ZqOnF7htwP7kz71K70_oRJhnIIiTqhS2lUhsRhjO2fttbcHFhbNRuBghkO1iFsFi17emWYSdR5Geq9YJ_cRCFqS8SeqNkVmqsyp2j1ChdhtDR6Q-v2LUKhBSN97GHtrz_a9Wi4BsEqrpDxMIbA3rX4fwLC49yBt00v_3q-iPDdHuVaQMq-V21Ha35dJAHqaT3pG2F1Xnhc0Dk12aRbh5QVLMdyC68ETjc0sPQGJd9i1lFvCyLAn19DaU43aJHZJCXkq4J2btrah2TzjyRP5HglNdRFfNeh3lQuXoEbKO8KV3hdUPESTR0T8M7-YGW8Fe3sD7vYbo8aUhBI79TbcsLV3gzfZwVA6kn3cyMcauYnrh4b9NxxkHQLLZ29XOYLphYYz36yXpuLnlynjtlr-RyAmDVhYAB5banNMYrL3TpydJk_MOwyESpTEsytwHW9joKfKALdagy92mAyV2lmxkRHuJW6p6pIPU8LsLayw7_d-nC2zpJtzJSFTZE3w5g3w0lhnmDDQWx-saz33moAbmNWDH2uUrYoZsrNbjO2vftTA-jT3Ss3IOABAdtoaeLtOaF4ftA9dnimi1Pbj63kRclK3rbwSmuTJJybtVEbnrbTmgRZBEmRiAX3E65U_nygcjJB6Hp2Uc52Wx1F6O1zndShM4kdHCJcMSZljwTJjPz0H7eU9oOA9eXqoWABjINLVQJEtdc2wvB1NRoaGun9DNdrkqJ2yW4y95jB_tiygpobf1cifQ04mQkpUm_5KJFjvpAfauMHC3f5uOCeM_Ft5KTcjOW7hZP6SVHIPdP4XPys9ZQKrF0WGgd6Tz-LuoSHAODiJ7m_5S=w1023-h902"), // 배경 이미지
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        //이미지
                        child: Image.network(
                          'https://lh3.googleusercontent.com/fife/AKsag4MVQ73t2-bJJHkrCql1vtlR-hFXnmLP5A9Yyh7nLOiirE0aWRJNzxKwUKBMVhFX0yyu2gL_JmP7r_-8K7YjFfOxh1934oLJithgym5nh-EvAf6DxUfoCsUlyBSJiPfjY3Qys4xftq0kJC2mXrEuz2dZ6q3Qu3B36ZIkrRrjE7bucj-R9b-ZqwVO9NUm9bPiDbHpwibsMjqwZsYShE27E-2uYDp0M5O_-UWckOlw0Cy863TN0KzeV_y9-nolB4FGpdNGsjKTc9i5J88YJ1y8s5dKqzx7_QSCWNADnPy_Tej19TW4Q4pdJJbARJzrIQhUi-R3dxWvx78uwZu0wTisTwvXMZxebKfjPVSDzwlZNUgUb8fgi3-oYf6FPT2uWoVIgAweOEeCSlkpEXpaTJHyqO7q_Ow90gf32-T0Cy4possBr-F6sU1_OokQ1pckh26Ufd9Pr5Cd5y6xSI-QD7w3jV8xXO5LaKi9V42uRDgtztO0EBzk3d2PtlEEV8cdskrVxTxNerPVqmGxBRdnMfvxZiTK-F0L4XcW5OUU2rrdCJwiw_Fk8jhp0LtPpcufImzDDYrA9eNVKFhtgqznpbq7OZVdqArnIWZVAvnAVlrlEfxqK6GHJAIAzk9nts5AJvtQ76j7hZUDLg3YhLqqPgXyvCB0DgaYyunqJ_tgSWRYOg2CpuM2G7IKf2Y8FEhN2anldVhQPmJqMW33fedVUKzK4ABUQfgK3XH0-28gOUfOc--Qd1jiwVQYYh3W5iO8b9otwalumDBPMnTeMp-CkHpA2IJhHLVgxa3I1WdUpKO8cQN8yStnUoemMGr60hPTJW6Cagoe5wpkuzmsyuxuQK_2Qe20Fp-OH1C6a8NshN--1COiPeaT9U8_IBZL1vUF3gwOaIFYAD_PulIBbNpY3IzJOfOqeBEYHEphZBsS9S1zHZ8yqXjzJSFqoOb66BY3bTxgS2Ukw0AbOgPVwmUJKJd03q71csOxJ6sRA6RpUhzkjJS0CM-YNQSg8fXN2YMAabY3ZWVbd0R6QQpye62rslDCO_JGQMW9BPozj142ODFpEYqXtKauPeoBuDNND9GkVtfs4tYHnnw_mVjW9cWAVfnHpQF6TAu_vSiV0Ory8nXnAHTpe7a3Iuo-t-0DKJUTnt1nDtGXoQGT5RnXv18ks8fgx4Kfq9xIWe9p9XEtaNdSJOLv1Ur7Z6VnmFaqlIQUO5pY5ETsvayLHMMteYPqJiA8z1UPeCsvDvp_PRAPU_eLhZqdMLb5Kecr-DfjxvJpQ-Ac0H1vlc9CMYGzdNf1zu4hdcPL80392c-hkjHLdHzVGZlx-M4sR8fPl5LzWdqAyYhzhvzPIsKHon5IoUhcMJy49yq5MHBxKC4K-2xn4qmIlKlsPLeg3ne-Au3E8ytN7Ix9VS1xlGtLWaDeOIFtgli52ENfyEZAjfrnvYAsSHcNTyn6LAewPedbrKHws-PQ9p0DSEAs_G1gqxfK30pV5ccZsChnENmGOkMfE-rr9IKnuVhnrDIRnIDpg1j9qT3XLgHfmWqu9Jrg=w1023-h902', // 10번째 줄의 imageUrl 가져오기
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: infoTypes.length,
                          itemBuilder: (context, index) {
                            return MySquare(
                              child: infoTypes[index],
                              onItemSelected: (sqaure_selectedIndex) {
                                setState(() {
                                  selectedIndex2 = sqaure_selectedIndex;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: selectedIndex2 == 1
                    ? MySelf()
                    : selectedIndex2 == 2
                        ? MyAddress()
                        : defaultSet(),
              ),
              // if (underSetting == 1)
              //   Expanded(flex: 1, child: MySelf())
              // else if (underSetting == 2)
              //   Expanded(flex: 1, child: MyAddress())
              // else
              //   Expanded(flex: 1, child: defaultSet()),
              //위젯들을 반환
              //하단 페이지 변경
              // Expanded(flex: 4, child: MySelf()), //위젯들을 반환
              // Expanded(flex: 2, child: MyAddress()), //위젯들을 반환
            ],
          )),
    );
  }
/*
  Widget underSet(int selectUnderSetting) {
    Widget content;
    if (selectUnderSetting == 1) {
      content = MySelf();
    } else if (selectUnderSetting == 2) {
      content = MyAddress();
    } else {
      content = defaultSet();
    }

    return Container(
      child: content,
    );
  }
  */
}
