import 'package:flutter/material.dart';
import 'package:youtube_music/constants.dart';
import 'package:youtube_music/model/home.dart';
import 'package:youtube_music/screens/home/components/home_playlist_card.dart';

class HomePlaylistBody extends StatelessWidget {
  const HomePlaylistBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: homePadding,
        child: SizedBox(
          height: 300,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songs.length % 4 == 0
                ? songs.length ~/ 4
                : songs.length ~/ 4 + 1,
            itemBuilder: (context, index) {
              List<Song> ls = songs.sublist(index * 4,
                  index * 4 + 4 <= songs.length ? index * 4 + 4 : songs.length);
              return Column(
                children: [
                  for (int i = 0; i < ls.length; i++) ...[
                    HomePlayListCard(
                        title: ls[i].title,
                        singer: ls[i].singer,
                        imageUrl: ls[i].imgUrl),
                    SizedBox(
                      height: 15,
                    )
                  ]
                ],
              );
            },
          ),
        ));
  }
}
