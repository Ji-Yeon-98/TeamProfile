import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/main.dart';
import 'package:test1/profile_service.dart';
import 'package:provider/provider.dart';

class JiYeon extends StatefulWidget {
  const JiYeon({Key? key}) : super(key: key);

  @override
  State<JiYeon> createState() => _JiYeonState();
}

class _JiYeonState extends State<JiYeon> {
  @override
  Widget build(BuildContext context) {
    ProfileService profileService = context.read<ProfileService>();
    var plists = profileService.plists;

    TextEditingController _textEditingNameController =
        TextEditingController(text: plists['name']);
    TextEditingController _textEditingBirthController =
        TextEditingController(text: plists['birth']);
    TextEditingController _textEditingMBTIController =
        TextEditingController(text: plists['mbti']);
    String nametext, brithtext, mbtitext;

    return Consumer<ProfileService>(
      builder: (context, profileService, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 169, 212, 255),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          "Profile 수정",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        content: Container(
                          padding: EdgeInsets.all(16.0),
                          width: double.infinity,
                          height: 230,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "이름",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Container(
                                      width: 130,
                                      child: TextField(
                                        controller: _textEditingNameController,
                                        textAlign: TextAlign.center,
                                        decoration:
                                            InputDecoration(hintText: "이름"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "생년월일",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 130,
                                      child: TextField(
                                        controller: _textEditingBirthController,
                                        textAlign: TextAlign.center,
                                        decoration:
                                            InputDecoration(hintText: "생년월일"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MBTI",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      width: 130,
                                      child: TextField(
                                        controller: _textEditingMBTIController,
                                        textAlign: TextAlign.center,
                                        decoration:
                                            InputDecoration(hintText: "MBTI"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          MaterialButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text("확인"),
                            onPressed: () {
                              nametext = _textEditingNameController.text;
                              brithtext = _textEditingBirthController.text;
                              mbtitext = _textEditingMBTIController.text;
                              profileService.updateProfile(
                                  content: "name", value: nametext);
                              profileService.updateProfile(
                                  content: "birth", value: brithtext);
                              profileService.updateProfile(
                                  content: "mbti", value: mbtitext);
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )
            ],
            title: Text(
              "Nougat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: const Color.fromARGB(255, 251, 251, 251),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "이름 :",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  plists['name']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "생년월일 :",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  plists['birth']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  "MBTI :",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  plists['mbti']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
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
                Divider(),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: scrollview(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SingleChildScrollView scrollview() {
    return SingleChildScrollView(
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
                  color: Color.fromARGB(255, 169, 212, 255).withOpacity(0.2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              Text(
                "긍정적인 생각, 남의 말 잘 들어줌",
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
                  color: Color.fromARGB(255, 169, 212, 255).withOpacity(0.2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              Text(
                "맡은 역할에 책임감을 가지고 해결하려고 노력",
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
                  color: Color.fromARGB(255, 169, 212, 255).withOpacity(0.2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              Text(
                "https://github.com/Ji-Yeon-98",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
