import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'informSet.dart';

class MySelf extends StatelessWidget {
  const MySelf({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //이미지 넣는 리스트
    final List<String> images = [
      'http://drive.google.com/uc?export=view&id=1XREpIGdMaDB0fcpSTSuL_3eCfKuodWM1',
      'http://drive.google.com/uc?export=view&id=1ZX2_KXs9cI7bfwj8AqgTqGIiYw4SM3ca',
      'http://drive.google.com/uc?export=view&id=14DPcMoc6I6sD0iMx7scSzHllSnkkkzBE',
    ];

    // TODO: implement build
    return Container(
      child: ListView.separated(
        itemCount: images.length, // 이미지 개수만큼 보여주기
        itemBuilder: (context, index) {
          final image = images[index]; // index에 해당하는 이미지
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: informSet(imageUrl: image), // imageUrl 전달및 세팅
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
