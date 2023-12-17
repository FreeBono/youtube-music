import 'package:flutter/material.dart';
import 'package:youtube_music/screens/home/components/home_playlist_body.dart';
import 'package:youtube_music/screens/home/components/home_subject_title.dart';

class HomePlaylist extends StatelessWidget {
  const HomePlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSubJectTitle(
          title: "MUSIC TO GET YOU STARTED",
          subTitle: "Welcome Jane",
          buttonText: "Play all",
        ),
        HomePlaylistBody(),
      ],
    );
  }
}
