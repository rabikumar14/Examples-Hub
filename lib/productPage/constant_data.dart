import '../other_exports.dart';

List<String> sizeNumlist = [
  "7",
  "8",
  "9",
  "10",
];
List<Color> colors = [
  const Color(0xFFF9362E),
  const Color(0xFF003CFF),
  const Color(0xFFFFB73A),
  const Color(0xFF3AFFFF),
  const Color(0xFF1AD12C),
  const Color(0xFFD66400),
];

String desc =
    "Get maximum support, comfort and a refreshed look with these adidas energy cloud shoes for men comes wit a classic style."
    "Boost your running comfort to the next level with this supportive shoe Synthetic upper with FITFRAME midfoot cage for a locked-down fit and feel"
    "Lace-up closure Cushioned footbed CLOUDFOAM midsole provides responsive padding Durable ADIWEAR™ rubber sole.";

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}
