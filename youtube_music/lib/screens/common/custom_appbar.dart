import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Container(
            // color: Colors.red,
            width: 120,
            height: 30,
            child: Image.asset('assets/youtube-icon.png', fit: BoxFit.cover),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          Icon(
            Icons.account_circle,
            size: 30,
          )
        ],
      ),
    );
  }
}
