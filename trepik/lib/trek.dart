// something to note: Screwing with this class syntax mandated that the application be rebuilt, not hot reloaded. The hot reload would not track the image update.
class Trek {
  String name;
  String tagline;
  String description;
  int distance;
  int difficulty;
  bool done;
  String image;

  // constructor
  Trek(String name, String tagline, String description, int distance, int difficulty, bool done,
      String image) {
    this.name = name;
    this.tagline = tagline;
    this.description = description;
    this.distance = distance;
    this.difficulty = difficulty;
    this.done = done;
    this.image = image;
  }
}