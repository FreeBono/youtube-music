import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? Icon(Icons.home_filled)
              : Icon(Icons.home_outlined),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? Icon(Icons.play_arrow)
              : Icon(Icons.play_arrow_outlined),
          label: '샘플',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? Icon(Icons.send_and_archive)
              : Icon(Icons.send_and_archive_outlined),
          label: '둘러보기',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ? Icon(Icons.library_music)
              : Icon(Icons.library_music_outlined),
          label: '보관하기',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 14, 14, 14),
      showUnselectedLabels: true,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.white),
    );
  }
}
