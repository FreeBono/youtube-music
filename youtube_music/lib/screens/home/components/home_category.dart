import 'package:flutter/material.dart';
import 'package:youtube_music/constants.dart';
import 'package:youtube_music/model/home.dart';

class HomeCategory extends StatelessWidget {
  final bool isSliverAppBarVisible;
  const HomeCategory({Key? key, required this.isSliverAppBarVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(isSliverAppBarVisible);
    return SliverAppBar(
        pinned: true,
        toolbarHeight: 60,
        backgroundColor:
            !isSliverAppBarVisible ? Colors.transparent : Colors.black,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  // height: 30,
                  child: Padding(
                    padding: homePadding,
                    child: Center(
                        child: Text(
                      category[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
