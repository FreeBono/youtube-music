class Song {
  String title;
  String singer;
  String imgUrl;
  Song({required this.title, required this.singer, required this.imgUrl});
}

List<String> category = [
  "Energize",
  "Feel good",
  "Relax",
  "Workout",
  "Romance",
  "Sleep",
  "Working",
  "Concentration"
];

List<Song> songs = [
  Song(
    title: "Always Remember Us This Way",
    singer: "Lady Gaga",
    imgUrl: "assets/always.jpg",
  ),
  Song(
    title: "Cruel Summer",
    singer: "Taylor Swift",
    imgUrl: "assets/cruel.jpg",
  ),
  Song(
    title: "Save Your Tears",
    singer: "The Weeknd",
    imgUrl: "assets/Save.jpg",
  ),
  Song(
    title: "Snowman",
    singer: "Sia",
    imgUrl: "assets/snowman.jpg",
  ),
  Song(
    title: "greedy",
    singer: "Tate McRae",
    imgUrl: "assets/greedy.jpg",
  ),
  Song(
    title: "Paint The Town Red",
    singer: "Doja Cat",
    imgUrl: "assets/paint.jpg",
  ),
  Song(
    title: "Senorita",
    singer: "Shawn Mendes & Camila Cabello",
    imgUrl: "assets/senorita.jpg",
  ),
  Song(
    title: "Levitating (feat. DaBaby)",
    singer: "Dua Lipa",
    imgUrl: "assets/levitating.jpg",
  ),
];

List<Song> mileySongList = [
  Song(
    title: "Malibu (Official Video)",
    singer: "Miley Cyrus",
    imgUrl: "assets/malibu.jpg",
  ),
  Song(
    title: "Flowers",
    singer: "Miley Cyrus",
    imgUrl: "assets/flowers.jpg",
  ),
  Song(
    title: "Plastic Heart",
    singer: "Miley Cyrus",
    imgUrl: "assets/plasticheart.jpg",
  ),
  Song(
    title: "We can't stop",
    singer: "Miley Cyrus",
    imgUrl: "assets/stop.jpg",
  ),
];

List<String> recommendedTitleList = ["Laid-Back Sofa Pop", "Queens of Rap"];
List<Map<String, dynamic>> recommendPlaylist = [
  {
    "genre": "Laid-Back Sofa Pop",
    "description": "Slow the pace with these blissful hits",
    "imgUrl": "assets/laidback.jpg",
    "songList": [
      Song(
        title: "Flowers",
        singer: "Miley Cyrus",
        imgUrl: "assets/flowers.jpg",
      ),
      Song(
        title: "I'm Not The Only One",
        singer: "Sam Smith",
        imgUrl: "assets/one.jpg",
      ),
      Song(
        title: "In The Starrs",
        singer: "Benson Boone",
        imgUrl: "assets/stars.jpg",
      ),
    ],
  },
  {
    "genre": "Queens of Rap",
    "description":
        "Listen to this collection of the fiercest tracks from hip ho's most talented women",
    "imgUrl": "assets/wap.jpg",
    "songList": [
      Song(
        title: "WAP (feat. Megan Thee Stallion",
        singer: "Cardi B",
        imgUrl: "assets/wap.jpg",
      ),
      Song(
        title: "Paint The Town Red",
        singer: "Doja Cat",
        imgUrl: "assets/paint.jpg",
      ),
      Song(
        title: "Anaconda",
        singer: "Nicki Minaj",
        imgUrl: "assets/anaconda.jpg",
      ),
    ],
  }
];
