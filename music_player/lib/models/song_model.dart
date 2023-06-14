class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'neeve',
      description: '',
      url: 'assets/music/neeve.mp3',
      coverUrl: 'assets/images/glass.jpg',
    ),
    Song(
      title: 'dil se',
      description: '',
      url: 'assets/music/gs.mp3',
      coverUrl: 'assets/images/illusions.jpg',
    ),
    Song(
      title: 'Pray',
      description: 'Pray',
      url: 'assets/music/pray.mp3',
      coverUrl: 'assets/images/pray.jpg',
    )
  ];
}
