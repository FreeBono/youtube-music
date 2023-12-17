import 'package:flutter/material.dart';
import 'package:youtube_music/constants.dart';
import 'package:youtube_music/model/home.dart';

class HomeSingerThemeBody extends StatelessWidget {
  const HomeSingerThemeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: homePadding,
      child: SizedBox(
        height: 270,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: mileySongList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset(
                    mileySongList[index].imgUrl,
                    fit: BoxFit.cover,
                  ),
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  mileySongList[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 5),
                Text(
                  mileySongList[index].singer,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 25,
            );
          },
        ),
      ),
    );
  }
}
