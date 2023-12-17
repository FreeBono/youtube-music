import 'package:flutter/material.dart';
import 'package:youtube_music/constants.dart';

class HomeExplore extends StatelessWidget {
  const HomeExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: homePadding,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "Explore",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(24, 24, 24, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.new_releases_outlined),
                          Text(
                            "New release",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    height: 100,
                  ),
                  flex: 1,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(24, 24, 24, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Icon(Icons.waterfall_chart), Text("Charts")],
                      ),
                    ),
                    height: 100,
                  ),
                  flex: 1,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(24, 24, 24, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.emoji_emotions_sharp),
                          Text("Moods & genres")
                        ],
                      ),
                    ),
                    height: 100,
                  ),
                  flex: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
