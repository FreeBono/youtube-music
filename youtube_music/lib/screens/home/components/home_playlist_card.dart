import 'package:flutter/material.dart';

class HomePlayListCard extends StatelessWidget {
  final title;
  final singer;
  final imageUrl;
  const HomePlayListCard(
      {required this.title, required this.singer, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  singer,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
