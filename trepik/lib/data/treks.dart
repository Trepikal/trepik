import '../classes/trek.dart';

startTrek(Trek trek) {
  print(trek.difficulty);
  if (trek.difficulty >= 3) {
    print("Are you certain?");
  }
}

List<Trek> treks = [
    Trek(
        "Frodo's Journey",
        "Simply Walk into Mordor.",
        "On Trepik's Flagship journey, join Frodo as he walks the 1800 miles between Bag End and Mount Doom to cast the ring into the fires. This mighty journey has customizable difficulty levels to make sure the experience is unique to you.",
        1800,
        2,
        false,
        'fellowship.jpg'),
    Trek(
        "Bilbo's Journey",
        "There and Back Again",
        "Follow the path of the Company of Thorin Oakenshield as they head toward the lonely mountain. Great for a first long journey, Bilbo and company set a comparatively easy pace. But be warned -- you may not come back the same.",
        1600,
        1,
        false,
        'hobbit.png'),
    Trek(
        "Lost City of the Incas",
        "Into the Heart of the Amazon",
        "It was long fabled that cities of gold scattered the lost tributaries of the Amazon Delta. On this unique rowing-based long distance journey, set forth into the untamed jungle in search of a mystical eden long secreted from the world.",
        1200,
        3,
        false,
        'eldorado.jpg'),
  ];