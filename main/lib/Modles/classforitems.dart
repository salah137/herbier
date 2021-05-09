import 'package:flutter/foundation.dart';

class Plante {
  final name;
  final imagePath;
  final description;
  final id;
  Plante(
      {@required this.name,
      @required this.id,
      @required this.imagePath,
      @required this.description});
}
