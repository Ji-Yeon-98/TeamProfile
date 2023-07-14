import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/informItem.dart';

class informSet extends StatefulWidget {
  const informSet({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl; // 이미지를 담을 변수

  @override
  _informSetState createState() => _informSetState();
}

class _informSetState extends State<informSet> {
  @override
  Widget build(BuildContext context) {
    var sentances = informItem.Sentences; //imformItem에서 갖고오는 형식

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.imageUrl == sentances[0]['imageUrl']) ...[
// CilpRRect 를 통해 이미지에 곡선 border 생성
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // 이미지
                child: Image.network(
                  widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  //String title = BLOG['title']!;
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sentances[0]['title'] ?? 'def', //! =  null이 아니다
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      softWrap: false,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2),
                    SizedBox(height: 4),
                    Text(
                      sentances[0]['sentence'] ?? 'def',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
            ] else if (widget.imageUrl == sentances[1]['imageUrl']) ...[
              // CilpRRect 를 통해 이미지에 곡선 border 생성
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // 이미지
                child: Image.network(
                  widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  //String title = BLOG['title']!;
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sentances[1]['title'] ?? 'def', //! =  null이 아니다
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      softWrap: false,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2),
                    SizedBox(height: 4),
                    Text(
                      sentances[1]['sentence'] ?? 'def',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
            ] else ...[
              //if (widget.imageUrl == sentances[2]['imageUrl'])
// CilpRRect 를 통해 이미지에 곡선 border 생성
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // 이미지
                child: Image.network(
                  widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  //String title = BLOG['title']!;
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sentances[2]['title'] ?? 'def', //! =  null이 아니다
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      softWrap: false,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2),
                    SizedBox(height: 4),
                    Text(
                      sentances[2]['sentence'] ?? 'def',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
