import 'package:flutter/material.dart';

import 'home_singer_theme_body.dart';
import 'home_subject_title.dart';

class HomeSingerTheme extends StatelessWidget {
  const HomeSingerTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSubJectTitle(
          title: "MORE FROM",
          subTitle: "Miley Cyrus",
          buttonText: "More",
        ),
        HomeSingerThemeBody(),
      ],
    );
  }
}
