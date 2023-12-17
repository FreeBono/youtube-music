import 'package:flutter/material.dart';
import 'package:youtube_music/screens/common/custom_appbar.dart';
import 'package:youtube_music/screens/common/custom_bottom_navigationbar.dart';
import 'package:youtube_music/screens/home/components/home_category.dart';
import 'package:youtube_music/screens/home/components/home_explore.dart';
import 'package:youtube_music/screens/home/components/home_playlist.dart';
import 'package:youtube_music/screens/home/components/home_recommand_list.dart';
import 'package:youtube_music/screens/home/components/home_singer_theme.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isSliverAppBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Calculate the position of SliverAppBar based on scroll offset
    setState(() {
      _isSliverAppBarVisible = _scrollController.hasClients &&
          _scrollController.offset >
              kToolbarHeight; // Adjust this value as needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
            decoration: BackgroundBox(),
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                CustomAppBar(),
                HomeCategory(isSliverAppBarVisible: _isSliverAppBarVisible),
                SliverList(
                  delegate: SliverChildListDelegate([
                    HomePlaylist(),
                    HomeSingerTheme(),
                    HomeRecommendList(),
                    HomeExplore(),
                  ]),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar());
  }

  BoxDecoration BackgroundBox() {
    return !_isSliverAppBarVisible
        ? BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.3, -0.9), //,
                end: FractionalOffset(0.4, 0.32), //Alignment.topCenter,
                colors: [
                  Colors.orange,
                  Colors.black,
                  // Colors.orange,
                ],
                // stops: [0.1, 0.5, 0.5],
                tileMode: TileMode.clamp),
          )
        : BoxDecoration(color: Colors.black);
  }
}
