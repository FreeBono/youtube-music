import 'package:flutter/material.dart';
import 'package:youtube_music/model/home.dart';
import 'package:youtube_music/screens/home/components/home_playlist_card.dart';

import 'home_subject_title.dart';

class HomeRecommendList extends StatelessWidget {
  const HomeRecommendList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSubJectTitle(
          title: "",
          subTitle: "Recommended playlists",
          buttonText: "More",
        ),
        SizedBox(
          height: 440,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendPlaylist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 34, 32, 1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 430,
                  width: 360,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: Image.asset(
                                  recommendPlaylist[index]["imgUrl"]),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          recommendPlaylist[index]["genre"],
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text("YouTube Music"),
                                      Text("69 songs")
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(recommendPlaylist[index]["description"]),
                        SizedBox(
                          height: 15,
                        ),
                        for (int i = 0;
                            i < recommendPlaylist[index]["songList"].length;
                            i++) ...[
                          HomePlayListCard(
                              title:
                                  recommendPlaylist[index]["songList"][i].title,
                              singer: recommendPlaylist[index]["songList"][i]
                                  .singer,
                              imageUrl: recommendPlaylist[index]["songList"][i]
                                  .imgUrl),
                          if (i < 2)
                            SizedBox(
                              height: 15,
                            )
                        ]
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
