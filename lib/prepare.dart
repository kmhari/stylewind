import 'package:stylewind/styles/colors.dart';

const prefixes = ["bg", "text", "border"];

Map prepareColors() {
  Map<String, dynamic> aggregatedColors = {};
  prefixes.forEach((type) {
    stylewind_colors.forEach((color, combinations) {
      combinations.forEach((intensity, colorHex) {
        aggregatedColors['$type-$color-$intensity'] = colorHex;
      });
    });
  });
  return aggregatedColors;
}
